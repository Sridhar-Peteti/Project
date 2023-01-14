  resource "aws_instance" "keyinst" {
  ami = var.ami_id
  instance_type = var.inst_type
  associate_public_ip_address = "true"
  subnet_id      = var.subnet_id
  security_groups = [var.security_group_id]
  for_each = var.inst_names
  tags = {
  Name = each.value
  }
  }

