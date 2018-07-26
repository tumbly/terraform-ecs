output "alb_security_group_id" {
  value = "${aws_security_group.alb.id}"
}

output "default_alb_target_group" {
  value = "${aws_alb_target_group.default.arn}"
}

output "alb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = "${element(concat(aws_lb.application.*.dns_name, aws_lb.application_no_logs.*.dns_name), 0)}"
}
