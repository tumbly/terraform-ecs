resource "aws_db_instance" "default" {
  allocated_storage    = "${var.rds_allocated_storage}"
  storage_type         = "gp2"
  engine               = "pgsql"
  engine_version       = "${var.rds_engine_version}"
  instance_class       = "${var.rds_instance_class}"
  identifier           = "${var.rds_identifier}"
  name                 = "${var.rds_name}-${var.environment}"
  username             = "${var.rds_username}"
  password             = "${var.rds_password}"
  parameter_group_name = "${var.parameter_group_name}"
  db_subnet_group_name = "${var.db_subnet_group_name}"
}

resource "aws_db_subnet_group" "default" {
  count = "${var.create ? 1 : 0}"

  name_prefix = "${aws_db_instance.default.name}"
  description = "Database subnet group for ${aws_db_instance.default.identifier}"
  subnet_ids  = "${var.private_subnet_cidrs}"

  tags {
    Environment = "${var.environment}"
  }
}

resource "aws_security_group" "rds" {
  name   = "${var.rds_name}_rds"
  vpc_id = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
  }
}

resource "aws_security_group_rule" "PostgresSQL_from_anywhere" {
  type              = "ingress"
  from_port         = 5432
  to_port           = 5432
  protocol          = "TCP"
  cidr_blocks       = ["${var.allow_cidr_block}"]
  security_group_id = "${aws_security_group.rds.id}"
}

resource "aws_security_group_rule" "outbound_internet_access" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.rds.id}"
}
