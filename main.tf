module "my-instance" {
source = "./modules/instance/"
}

module "my-vpc" {
source = "./modules/vpc/"
}

module "my-s3" {
source = "./modules/s3/"
}
