module "my-vpc" {
source = "./modules/vpc/"
}

module "my-s3" {
source = "./modules/s3/"
}

module "my-instance" {
source = "./modules/instance/"

subnet_id = module.my-vpc.subnet_id
}
