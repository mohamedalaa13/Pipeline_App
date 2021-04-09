resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.iti-network.id
  cidr_block = var.public1_subnet_cidr

  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.iti-network.id
  cidr_block = "10.0.3.0/24"
  
  availability_zone = "us-east-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "public2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.iti-network.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.iti-network.id
  cidr_block = "10.0.4.0/24"

  availability_zone = "us-east-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "private2"
  }
}