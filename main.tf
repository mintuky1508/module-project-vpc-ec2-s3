
module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_ids
  instance_type = var.ec2_instance_type
  key_name      = "cicd"
  instance_name = var.instance_name
}

module "s3" {
  source = "./modules/s3"
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_name = "my-vpc"
}

module "subnet" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  subnet_name             = "my-subnet"
  subnet_cidr             = "10.0.1.0/24"
  map_public_ip_on_launch = true
}
