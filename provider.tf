provider aws {}

resource "aws_s3_bucket" "temp" {
    bucket = "test"
}

resource "aws_s3_bucket" "temp2" {
    bucket = "test2"
}

resource "aws_s3_bucket" "temp3" {
    bucket = "test3"
}

terraform {
  required_version = ">= 0.12"
}
