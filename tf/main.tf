module "vpc" {
  source = "./modules/vpc"
  count  = var.enable_vpc ? 1 : 0
}

module "ec2_instance" {
  source = "./modules/ec2_instance"

  count        = var.enable_ec2 ? 1 : 0
  subnet_id    = module.vpc[0].pub_sub_id
  sec_group_id = module.vpc[0].sec_group_id
}
