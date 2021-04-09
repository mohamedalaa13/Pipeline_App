terraform {
  backend "s3" {
    bucket = "network-bucket-iti"
    key    = "iti/dev/terraform.tfstate"
    region = "us-east-2"

    #dynamodb_table = "backend"
  }
}