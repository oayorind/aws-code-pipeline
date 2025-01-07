provider "aws" {
  region = "us-east-1" # Replace with your preferred region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-s3-bucket-name-22354" # Replace with your desired unique bucket name
  acl    = "private"                 # Access control list (e.g., private, public-read, etc.)

  tags = {
    Environment = "Dev"
    Name        = "My S3 Bucket"
  }
}

