provider aws {}

resource "aws_s3_bucket" "temp" {
    bucket = "test"
}

resource "aws_s3_bucket" "temp2" {
    bucket = "test"
}

terraform {
  required_version = ">= 0.12"
  cloud {
    organization = "aws"
    hostname = "terrakube-ui"

    workspaces {
        project = "personal-terraform"
        tags = ["testing", "source:cli"]
    }
  }
}
