output "Subnet_IDs" {
  description = "Subnet_IDs"
  value       = ["${aws_subnet.MY_SUBNETS["a"].id}","${aws_subnet.MY_SUBNETS["b"].id}"]
}
