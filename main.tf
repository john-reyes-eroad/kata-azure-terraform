resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    owner_email       = var.owner_email
    owner_platform    = var.owner_platform
    date_delete_after = var.date_delete_after
  }
}
