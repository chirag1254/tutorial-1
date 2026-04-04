terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100.0" # Locking to a recent 3.x version for production stability
    }
  }
}

provider "azurerm" {
  features {}
}
