resource "aws_s3_bucket" "bucket" {
  bucket = "project-bucket-unique1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

