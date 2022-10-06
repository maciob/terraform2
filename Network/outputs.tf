output "subnet_id_1" {
  description = "Subnet_1_ID"
  value       = "${aws_subnet.MY_SUBNETS["a"].id}"
}
output "subnet_id_2" {
  description = "Subnet_2_ID"
  value       = "${aws_subnet.MY_SUBNETS["b"].id}"
}
