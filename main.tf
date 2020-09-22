provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg_vnet" {
    name = var.vnet.name
    location = var.location
}

module "testrg" { 
  source = "./module/resourcegroup" 
}

output "resource_group" { 
  value  = module.testrg.resource_group
}

module "storageacc" { 
  source = "./module/storageaccount"
}

output "storage_account_output" { 
  value  = module.storageacc.storage_account_output
}





# "./" = C:\terraform\TerraformVM\


#  full file path > C:\terraform\TerraformVM\main.tf
#  "./" = C:\terraform\TerraformVM\
#  "./module/network" = C:\terraform\TerraformVM\module\network\


#  directory path > C:\terraform\TerraformVM\

  