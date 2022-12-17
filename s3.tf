resource "aws_s3_bucket" "bucket" {
  bucket = "project-A-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "bucket-1" {
  bucket = "project-A-bucket-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}