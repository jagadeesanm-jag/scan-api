terraform {
  required_version = ">=0.100.0"
}

provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "foo" {
bucket = "my-tf-log-bucket"
acl = "private"
versioning {
enabled = true
}
logging {
target_bucket = "logging_bucket"
target_prefix = "log/"
}
}
