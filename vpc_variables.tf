variable "vpc_name" {
    type = string
    default = "meravpc" 
}


/*
variable "availability_zones" {
    description = "instance will be created in these availability zone"
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}
*/
variable "private_subnets" {
    description = "instance will be created in these private subnets"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "public_subnets" {
    description = "instance will be created in these public subnets"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "database_subnets" {
    description = "instance will be created in these database subnets"
    type = list(string)
    default = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "database_subnet_route_table" {
    description = "database_subnet_route_table"
    type = bool
    default = true
}

variable "database_subnet_group" {
    description = "database_subnet_group"
    type = bool
    default = true
}

variable "enable_nat_gateway" {
    description = "enable_nat_gateway"
    type = bool
    default = true
}

variable "single_nat_gateway" {
    description = "single_nat_gateway"
    type = bool
    default = true
}

