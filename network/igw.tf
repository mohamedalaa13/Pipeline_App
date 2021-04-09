resource "aws_internet_gateway" "public-net" {
  vpc_id = aws_vpc.iti-network.id

  tags = {
    Name = "public internet gateway"
  }
}