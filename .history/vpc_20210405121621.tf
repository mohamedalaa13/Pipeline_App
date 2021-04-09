# Create a VPC
resource "aws_vpc" "iti-network" {
  cidr_block = var.cidr
  enable_dns_support = true

  tags = {
    "Name" = "iti-network"
  }
}