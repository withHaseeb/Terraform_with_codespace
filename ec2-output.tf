output "ec2_bastion_public_instances_ids" {
    value = module.ec2_public.id
  
}

output "ec2_bastion_public_ip" {
    value = aws_eip.meri_eip.public_ip
  
}