resource "aws_s3_bucket" "bucket" {
  bucket = "project-bucket-unique1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "bucket-1" {
  bucket = "project-bucket-unique2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}