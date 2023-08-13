resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block       = var.subnet_cidr
  tags              = var.tags
  availability_zone = var.availability_zone
}





