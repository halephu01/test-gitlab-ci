terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
    
    ansible = {                       ### ansible provider ###
      source = "ansible/ansible"
      version = "1.1.0"
    }

  }
  backend "s3" {                                  ### backend ###
    bucket = "your-bucket-name"
    key = "your-bucket-key"
 } 
}

provider "aws" {
}
