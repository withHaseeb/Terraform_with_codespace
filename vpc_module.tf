
data "aws_availability_zones" "available" {
  #state = "available"
  #exclude_names = ["us-east-1a", "us-east-1b"]
}



module "pehlamodule" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = "${local.name}-${var.vpc_name}"
  cidr = "10.0.0.0/16"

  #azs                 = var.availability_zones
  azs = data.aws_availability_zones.available.names
  private_subnets     = var.private_subnets
  public_subnets      = var.public_subnets
  #Database subnet
  create_database_subnet_route_table = var.database_subnet_route_table
  create_database_subnet_group = var.database_subnet_group
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true
  database_subnets    = var.database_subnets

  #Nat gateways for private subnet
  enable_nat_gateway = true
  single_nat_gateway = true

  # VPC DNS parameters
  enable_dns_hostnames = var.enable_nat_gateway
  enable_dns_support = var.single_nat_gateway

  tags = local.common_tags
  vpc_tags = local.common_tags


  public_subnet_tags = {
    Name = "akhi_public_subnet"
    Environment = "sabka"
    "kubernetes.io/role/elb" = 1
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"
  }

  private_subnet_tags = {
    Name = "sirf_mera_subnet"
    "kubernetes.io/role/elb" = 1
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"
  }

  database_subnet_tags = {
    Name = "mera_database"
  }

}




  
