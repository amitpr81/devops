terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "215b9db1-af6b-47ae-bb8b-df93a6c123b6"

}
