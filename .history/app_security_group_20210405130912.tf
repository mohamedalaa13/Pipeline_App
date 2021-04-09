resource "aws_security_group" "app-sc" {

  vpc_id = module.iti.vpc_nid

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