resource "aws_instance" "keyinst" {
ami = var.ami_id
instance_type = var.inst_type
for_each = var.inst_names
tags = {
Name = each.value
}
}
