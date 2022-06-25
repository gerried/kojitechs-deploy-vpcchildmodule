
# First travel to root module. 
# out output file(outname)

output "vpc_id" {
    description = "This is the vpc id"
    value = module.networking.vpc_id
}
# out put vpc_id
# private subnet
output "private_subnet" {
    description = "This is private subnet id"
    value = module.networking.priv_subnet
}

# public_subnet
output "public_subnet" {
    description = "This is public subnet id"
    value = module.networking.public_subnet
}

# database subnet
output "database_subnet" {
    description = "This is database subnet id"
    value = module.networking.database_subnet
}