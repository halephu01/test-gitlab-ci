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
    bucket = "testk8s011"
    key = "your-bucket-key"
 } 
}

provider "aws" {
  region     = "us-west-1"  # Thay đổi thành vùng bạn muốn sử dụng
  access_key = "AKIAWQUOZMMBWOK4LXW6"  # Thay đổi thành khóa truy cập của bạn
  secret_key = "YQnpbrkygagCQqfM+3UhG3Nqbg53TbIPmrqRssRC"  # Thay đổi thành khóa bí mật của bạn
}
