resource "aws_vpc" "keyvpc" {
cidr_block = var.vpc_cidr
tags = {
Name = var.vpc_name
}
}

resource "aws_subnet" "keysn" {
vpc_id = aws_vpc.keyvpc.id
cidr_block = var.sn_cidr
tags  = {
Name = var.sn_name
}
}

resource "aws_internet_gateway" "keyig" {
vpc_id = aws_vpc.keyvpc.id
tags = {
Name = var.ig_name
}
}

resource "aws_route_table" "keyrt" {
vpc_id = aws_vpc.keyvpc.id
route {
cidr_block = var.rt_cidr
gateway_id = aws_internet_gateway.keyig.id
}
tags = {
Name =  var.rt_name
}
}

