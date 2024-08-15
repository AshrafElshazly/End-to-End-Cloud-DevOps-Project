resource "aws_s3_bucket" "example" {
  bucket = var.backup_bucket_name
}
