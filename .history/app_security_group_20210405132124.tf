resource "aws_security_group" "app-sc" {

  vpc_id = module.iti.vpc_nid

  ingress {
    
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.iti.vpc_name.cidr_block]
  }

  tags = {
    "Name" = "app_security"
  }
}