
provider "aws" {
  profile    = "default"
  region     = "${var.region}"
}


terraform {
  backend "s3" {
    bucket         = "san-bucket6383814621"
    dynamodb_table = "san-table"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    
  }
}
