provider aws {}

resource "aws_s3_bucket" "temp" {
    bucket = "test"
}

resource "aws_s3_bucket" "temp2" {
    bucket = "test2"
}


terraform {
  required_version = ">= 0.12"
  cloud {
    organization = "aws"
    hostname = "127.0.0.1"

    workspaces {
      project = "personal-terraform"
      tags = ["networking", "source:cli"]
    }
  }
}
