# resource "aws_nat_gateway" "private-nat" {
#   allocation_id = aws_eip.iti.id
#   subnet_id     = aws_subnet.public1.id
# }