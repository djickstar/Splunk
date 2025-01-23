terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
  #profile =  "configured profile inside the ~/.aws/credential"
  #shared_config_files = ["~/.aws/config"] ## to specify different location for users credentials

  default_tags {
    tags = {
      Name : "splunk-ec2-server"
      Environment : "developpement"
      CostCenter : "425866"
      backupstatus : "false"
    }
  }

}


terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

