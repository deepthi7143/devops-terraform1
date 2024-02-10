# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region = "ap-south-1"
}
provider "aws" {
  region = "us-east-1"
  alias = "america"
}

resource "aws_s3_bucket" "test" {
  bucket = "del-hyd-south-1"

}
resource "aws_s3_bucket" "test2" {
  bucket = "del-hyd-east-1"
  provider = aws.america
  
}
