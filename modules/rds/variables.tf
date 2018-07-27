variable "rds_name" {
  default     = "default"
  description = "The name of the RDS instance"
}

variable "environment" {
  description = "The name of the environment"
}

variable "db_subnet_group_name" {
  type        = "list"
  description = "List of DB subnet group name to place the RDS instance in"
}

variable "rds_username" {
  description = "The RDS username"
}

variable "rds_password" {
  description = "The RDS password"
}

variable "rds_instance_class" {
  default     = "db.t2.micro"
  description = "The default RDS instance class"
}

variable "vpc_id" {
  description = "The VPC id"
}

variable "allow_cidr_block" {
  default     = "0.0.0.0/0"
  description = "Specify cird block that is allowd to acces the LoadBalancer"
}
