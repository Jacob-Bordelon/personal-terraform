provider aws {}

resource "aws_s3_bucket" "temp" {
    bucket = "test"
}