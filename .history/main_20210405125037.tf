module "iti" {
    source = "./network"
    region = "us-east-2"
    cidr = "10.0.0.0/16"
    name = "dev"
    public1_subnet_cidr = "10.0.1.0/24"
    public2_subnet_cidr = "10.0.2.0/24"
    private1_subnet_cidr = "10.0.3.0/24"
    private2_subnet_cidr = "10.0.4.0/24"
    az1 = "us-east-2a"
    az2 = "us-east-2b"

}