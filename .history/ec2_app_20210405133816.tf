resource "aws_instance" "application" {
  ami = var.ami_image
  instance_type = "t2.micro"

  subnet_id = module.iti.public1_id 
  vpc_security_group_ids = [aws_security_group.app-sc.id]
  key_name = "networkdesign"

  tags = {
    Name = "application"
  }

  provisioner "local-exec" {
    command = "echo public IP is ${self.public_ip}"
  
  }
}