terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.43.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.98.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.29.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region                   = var.region
  profile                  = var.profile

}
