
# First travel to root module. 
# out output file(outname)

output "vpc_id" {
    description = "This is the vpc id"
    value = module.vpc.vpc_id
}

output "vpc_cidr" {
    description = "This is the vpc id"
    value = module.vpc.vpc_cidr_block
}

output "private_subnet" {
    description = "This is private subnet id"
    value = module.vpc.private_subnets
}

# public_subnet
output "public_subnet" {
    description = "This is public subnet id"
    value = module.vpc.public_subnets
}

output "public_subnet_cidr" {
    description = "This is public subnet id"
    value = module.vpc.public_subnets
}

# database subnet
output "database_subnet" {
    description = "This is database subnet id"
    value = module.vpc.database_subnets
}