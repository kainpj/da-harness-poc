provider "aws" {
  region = "us-east-2"
  }
resource "aws_s3_bucket" "b" {
  bucket = "${var.s3_bucket_name}"
  tags = {
    Name = "sandp-global"
    Environment = "Dev"
    }
  }

output "s3_bucket" {
  value = aws_s3_bucket.b.bucket
  }
