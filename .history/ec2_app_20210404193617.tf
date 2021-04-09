resource "aws_instance" "application" {
  ami = "ami-08962a4068733a2b6"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private1.id 
  vpc_security_group_ids = [aws_security_group.app-sc.id]
  key_name = "networkdesign"
  tags = {
    Name = "application"
  }
}