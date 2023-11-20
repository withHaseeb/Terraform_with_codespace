locals {
  owners = var.business_division
  environment = var.environment
  name1 = "${local.owners}-${local.environment}"
  common_tags  = {
    owners = local.owners
    environment = local.environment
  }
  eks_cluster_name = "${local.name1}-${var.cluster_name}"
}