variable "ami_id" {
default= "ami-0b5eea76982371e91"
}

variable "inst_type" {
default = "t2.micro"
}

variable "inst_names" {
type = set(string)
default = ["dev", "test", "prod"]
}


