resource "aws_security_group" "app-sc" {

  vpc_id = aws_vpc.iti-network.id

  ingress {
    
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.iti-network.cidr_block]
  }

  tags = {
    "Name" = "app_security"
  }
}