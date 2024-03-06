resource "aws_s3_bucket" "karthi-s3-tfstate" {
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
