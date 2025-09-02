provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "kavya" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" 
  subnet_id = "subnet-0d8d902fe1fd93682"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "kavya-s3-demo-xyz"
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
