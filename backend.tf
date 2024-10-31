terraform {
  backend "s3" {
    bucket         = "forest77774xy" 
    key            = "path/to/terraform.tfstate"
    region         = "us-east-1"
     encrypt       = true
    dynamodb_table = "terraform-lock"
  }
  }


