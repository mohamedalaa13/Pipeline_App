# Create a VPC
resource "aws_vpc" "iti-network" {
  cidr_block         = "10.0.0.0/16"
  enable_dns_support = true

  tags = {
    "Name" = "iti-network"
  }
}