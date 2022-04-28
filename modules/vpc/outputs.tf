output "vpc_id" {
  value = "${aws_vpc.default.id}"
}

output "subnet_1" {
  value = "${aws_subnet.subnet1-public.id}"
}

output "sg_1" {
  value = "${aws_security_group.allow_all.id}"
}

output "vpc_name" {
  value = "${aws_vpc.default.tags.Name}"
}

output "env_name" {
  value = "${aws_vpc.default.tags.environment}"
}