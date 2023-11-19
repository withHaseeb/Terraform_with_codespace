
# Region
variable "aws_region" {
    description = "Region in which AWS resources will be created"
    type = string
    default = "us-east-1"
  
}
# Environmental Variable
variable "environment" {
    description = "Environmental used as a prefix"
    type = string
    default = "dev"
  
}

# business Division
variable "business_division" {
    description = "Business division in the large organization"
    type = string
    default = "HR"
  
}
