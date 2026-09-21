// terraform init: setup project and download providers
// terraform fmt: format files
// terraform plan: preview AWS changes
// terraform apply: create or update AWS resources
// terraform show: show current state
// terraform destroy: delete all resources created

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
