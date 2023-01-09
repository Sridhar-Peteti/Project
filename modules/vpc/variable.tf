variable "vpc_name" {
default = "terra_vpc"
}

variable "vpc_cidr" {
default = "10.0.0.0/16"
}

variable "sn_name" {
default = "terra_sn"
}

variable "sn_cidr" {
default = "10.0.0.0/24"
}

variable "ig_name" {
default = "terra_ig"
}

variable "rt_cidr" {
default = "0.0.0.0/0"
}

variable "rt_name"{
default = "terra_rt"
}
