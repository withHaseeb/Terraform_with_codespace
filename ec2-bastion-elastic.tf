resource "aws_eip" "meri_eip" {
    depends_on = [module.ec2_public, module.pehlamodule]
  instance = module.ec2_public.id
  domain = "vpc"
  tags = local.common_tags
}