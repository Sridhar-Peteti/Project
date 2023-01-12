  resource "aws_instance" "keyinst" {
  ami = var.ami_id
  instance_type = var.inst_type
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  security_groups = [aws_security_group.TF-SG.name]
  for_each = var.inst_names
  tags = {
  Name = each.value
  }
  }

  resource "aws_security_group" "TF-SG" {
  name        = "TF-SG"
  description = "Adding terraform security group"

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "TF-SG"
  }
}
