//Terraform 0.13 and later:

terraform {
  //required_version = "0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

/* As a recommeded practice we save the access and secret keys via environment variables at the OS level
   to prevent exposing credentils going to version control.
   export export AWS_ACCESS_KEY_ID="anaccesskey"
   export AWS_SECRET_ACCESS_KEY="asecretkey"
*/