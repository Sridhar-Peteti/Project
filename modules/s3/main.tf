resource "aws_s3_bucket" "keys3" {
bucket = var.s3_bktname
}

resource "aws_s3_bucket_acl" "keyacl" {
bucket = aws_s3_bucket.keys3.id
acl = var.s3acl
}

resource "aws_s3_bucket_versioning" "keyver" {
bucket = aws_s3_bucket.keys3.id
versioning_configuration {
status = var.verstatus
}
}

