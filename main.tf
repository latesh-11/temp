module "my_vpc" {
  source   = "./modules/aws_vpc"
  for_each = var.vpc_variables
  vpc_cidr = each.value.vpc_cidr
  tags     = each.value.tags

}

module "my_subnets" {
  source            = "./modules/aws_subnets"
  for_each          = var.subnet_variables
  subnet_cidr       = each.value.subnet_cidr
  tags              = each.value.tags
  vpc_id            = module.my_vpc[each.value.vpc_name].vpc_id
  availability_zone = each.value.availability_zone
}
