
provider "aws" {
  profile    = "default"
  region     = "${var.region}"
}


terraform {
  backend "s3" {
    bucket         = "success-12345"
    dynamodb_table = "success-12345"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    
  }
}
