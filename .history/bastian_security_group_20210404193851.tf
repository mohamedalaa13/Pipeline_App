resource "aws_security_group" "bastian-sc" {

  vpc_id = aws_vpc.iti-network.id

  ingress {
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "bastian_security"
  }
}