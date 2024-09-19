provider "aws" {
  access_key = ""
  secret_key = ""
  token      = ""
  alias      = "main"
}



terraform {
  required_version = "~>1.4.4"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "5.46.0"
      configuration_aliases = [aws.main]
    }
  }
}