variable "instance-type" {
    description = "EC2 instance type"
    type = string   
    default = "t3.micro"
  
}

variable "instance-keypair" {
    description = "AWS ec2 key pair that need to be associated with instance"
    type = string
    default = "terraform-keypair"
  
}