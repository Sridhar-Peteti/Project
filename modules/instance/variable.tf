variable "ami_id" {
default= "ami-0cca134ec43cf708f"
}

variable "inst_type" {
default = "t2.micro"
}

variable "inst_names" {
type = set(string)
default = ["dev", "test", "prod"]
}


