output "default_rds_endpoint" {
  value = "${aws_db_instance.default.endpoint}"
}

output "default_db_subnet_group_id" {
  description = "The db subnet group name"
  value       = "${element(concat(aws_db_subnet_group.default.*.id, list("")), 0)}"
}
