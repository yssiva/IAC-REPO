
provider "aws" {
  profile    = "default"
  region     = "${var.region}"
}


terraform {
  backend "s3" {
    bucket         = "success-123"
    dynamodb_table = "success-123"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    
  }
}