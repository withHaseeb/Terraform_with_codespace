module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  name = "${local.name}-mera-Bastion"
  ami = data.aws_ami.amzlinux2.id
  instance_type          = var.instance-type
  key_name               = var.instance-keypair
  #monitoring             = true
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_id              = module.pehlamodule.public_subnets[0]

  tags = local.common_tags
}