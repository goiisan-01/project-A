resource "aws_s3_bucket" "bucket" {
  bucket = "project-bucket-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "bucket-1" {
  bucket = "project-bucket-2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}