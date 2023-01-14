resource "aws_security_group" "TF-SG" {
  name        = "TF-SG"
  description = "Adding terraform security group"
  vpc_id      = var.vpc_id

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

output "security_group_id" {
  value = aws_security_group.TF-SG.id
}
