resource "null_resource" "copy_ec2_keys" {
    depends_on = [ module.ec2_public]

#connection block
  connection {
    type = "ssh"
    host = aws_eip.meri_eip.public_ip
    user = "ec2-user"
    password = ""
    private_key = file("/workspaces/Terraform_with_codespace/VPC-3Tier/Terraform_with_codespace/key-pair.pem")
    
  }
  provisioner "file" {
    source = "key-pair.pem"
    destination = "/tmp/key-pair.pem"
  }  

  provisioner "remote-exec" {
    inline = [ 
      "sudo chmod 400 /tmp/key-pair.pem"
     ]
    
  }

}
