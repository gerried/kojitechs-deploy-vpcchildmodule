
# module "networking" {
#   source = "git::https://github.com/gerried/operational_environment_network.git"

#   vpc_cidr             = var.vpc_cidr
#   pub_subnet_cidr      = var.pub_subnet_cidr
#   pub_subnet_az        = ["us-east-1a", "us-east-1b"]
#   priv_subnet_cidr     = var.priv_subnet_cidr
#   priv_subnet_az       = ["us-east-1a", "us-east-1b"]
#   database_subnet_cidr = var.database_subnet_cidr
#   database_subnet_az   = ["us-east-1a", "us-east-1b"]
# }

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version              = "~> 3.0"
  
  name                 = "APP_VPC"
  cidr                 = var.vpc_cidr
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = var.priv_subnet_cidr
  public_subnets       = var.pub_subnet_cidr
  database_subnets     = var.database_subnet_cidr

 enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  enable_flow_log                      = true
  create_flow_log_cloudwatch_iam_role  = true
  create_flow_log_cloudwatch_log_group = true

}
