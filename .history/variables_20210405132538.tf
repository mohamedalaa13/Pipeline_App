#vpc
variable "cidr" {

    type = "string"
}
variable "name" {

    type = "string"
}

#subnets
variable "public1_subnet_cidr" {
    type = "string"
  
}
variable "public2_subnet_cidr" {
    type = "string"
  
}
variable "private1_subnet_cidr" {
    type = "string"
  
}
variable "private2_subnet_cidr" {
    type = "string"
  
}

#AZs
variable "az1" {
  type = "string"

}
variable "az2" {
  type = "string"

}

#provider
variable "region" {
  type = "string"
}

#ami
variable "ami_image" {
  type = "string"
  
}