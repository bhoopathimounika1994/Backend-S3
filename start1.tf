provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-0182f373e66f89c85" 
  subnet_id = "subnet-06f4778785b9b9f99" 
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "forest77774xy" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}




