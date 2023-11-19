module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "${local.name}-public-bastion-sg"
  description = "Security group for SSH open port for anyone"
  vpc_id      = module.pehlamodule.vpc_id

  # ingress rule & CIDR blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # egress rule -all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}
