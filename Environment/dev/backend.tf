terraform{
    backend "azurerm" {
        resource_group_name = "devbackendrg"
        storage_account_name= "rakshdevbackend"
        container_name = "backup"
        key = "dev.tfstate"

              
    }
}