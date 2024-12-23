resource "aws_subnet" "subnet1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name = var.subnet_name
  }
}
