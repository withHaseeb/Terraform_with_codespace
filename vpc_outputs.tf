output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.pehlamodule.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.pehlamodule.vpc_cidr_block
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = module.pehlamodule.default_security_group_id
}

output "default_route_table_id" {
  description = "The ID of the default route table"
  value       = module.pehlamodule.default_route_table_id
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = module.pehlamodule.vpc_enable_dns_hostnames
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = module.pehlamodule.vpc_main_route_table_id
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = module.pehlamodule.vpc_owner_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.pehlamodule.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.pehlamodule.public_subnets
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.pehlamodule.database_subnets
}

