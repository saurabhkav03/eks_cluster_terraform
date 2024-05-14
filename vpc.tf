data "aws_availability_zones" "available" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"



  name = "sauri-eks-vpc"
  cidr = var.cidr_range
  azs = data.aws_availability_zones.available.names
  public_subnets = ["10.0.4.0/24", "10.0.5.0/24"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_nat_gateway = true
  enable_dns_hostnames = true
  enable_dns_support = true
  single_nat_gateway = true
}

