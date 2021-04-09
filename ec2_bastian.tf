resource "aws_instance" "bastian" {
  ami = var.ami_image
  instance_type = "t2.micro"

  subnet_id = module.iti.public1_id
  vpc_security_group_ids = [aws_security_group.bastian-sc.id]
  key_name = var.key

  tags = {
    Name = "bastian"
  }

  provisioner "local-exec" {
    command = "echo public IP is ${self.public_ip}"
  
  }
}