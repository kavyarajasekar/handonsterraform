terraform {
  backend "s3" {
    bucket         = "kavya-s3-demo-xyz"
    key            = "kavya/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
