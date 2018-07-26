vpc_cidr = "10.0.0.0/16"

environment = "ebo"

public_subnet_cidrs = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]

private_subnet_cidrs = ["10.0.50.0/24", "10.0.51.0/24", "10.0.52.0/24"]

availability_zones = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]

max_size = 3

min_size = 1

desired_capacity = 3

ecs_key_name = "ebo"

instance_type = "t2.micro"

ecs_aws_ami = "ami-2187375c"
