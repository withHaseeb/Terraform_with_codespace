module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.20.0"

  cluster_name                   = "${local.name1}-mera-EKS"
  cluster_endpoint_public_access = true
  vpc_id                         = module.pehlamodule.vpc_id
  subnet_ids                     = module.pehlamodule.private_subnets

  eks_managed_node_groups = {
    eks_nodes1 = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.micro"  # Replace with your desired instance type
      key_name         = "terraform-keypair"   # Replace with your key pair name

    },
    eks_nodes2 = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.micro"  # Replace with your desired instance type
      key_name         = "terraform-keypair"   # Replace with your key pair name

    
    }
  }
}

locals {
  name = "your_project_name"  # Replace with your project name
}
