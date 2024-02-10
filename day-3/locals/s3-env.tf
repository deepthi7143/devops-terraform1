locals {
  bucket-name = "${var.layer}-${var.env}-my-bucket"
}

resource "aws_s3_bucket" "demo" {
    # bucket = "web-dev-bucket"
    # bucket = "${var.layer}-${var.env}-bucket-hyd"
    bucket = local.bucket-name
    tags = {
        # Name = "${var.layer}-${var.env}-my-bucket"
        Name = local.bucket-name
        Environment = var.env
    }
    
 
  
}
