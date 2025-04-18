provider "azurerm" {
    client_id = "XXXXXXX"
    client_secret = "XXXXXXX"
    tenant_id = "XXXXXXX"
    subscription_id = "XXXXXXX"
    features {
        key_vault {
            purge_soft_delete_on_destroy = true
        }
    }
}