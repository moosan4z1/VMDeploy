# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71"
    }
  }
  required_version = ">= 0.14.9"
}

# terraform{
#   backend "http" {
#     address = "https://git.srv.steinweg.nl/api/v4/projects/148/terraform/state/TEST_TENANT"
#     lock_address = "https://git.srv.steinweg.nl/api/v4/projects/148/terraform/state/TEST_TENANT/lock"
#     unlock_address = "https://git.srv.steinweg.nl/api/v4/projects/148/terraform/state/TEST_TENANT/lock"
#     lock_method = "POST"
#     unlock_method = "DELETE"
#     retry_wait_min = 5
#   }
# }

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "10b360f1-8a36-4e7c-8afa-033f7a8d1912"
  client_id       = "d983ff9b-2aa4-45ac-9fe1-8e79a0ff3118"
  client_secret   = "6ta8Q~52tQDaDuCWk_GIlIX2EOqal-PVi1rBHbk5"
  tenant_id       = "10e5386e-203d-4c75-b98f-4cc1dda80eb2"
}
