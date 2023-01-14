module "my-vpc" {
source = "./modules/vpc/"
}

module "my-sg" {
source = "./modules/sg/"
vpc_id = module.my-vpc.vpc_id
}

module "my-instance" {
source = "./modules/instance/"
subnet_id = module.my-vpc.subnet_id
security_group_id = module.my-sg.security_group_id
}

module "my-s3" {
source = "./modules/s3/"
}

