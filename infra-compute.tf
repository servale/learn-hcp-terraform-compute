resource "azurerm_public_ip" "vm1" {
  name                = "pip-${var.application_name}-${var.environment_name}-vm1"
  location            = data.tfe_outputs.learn-hcp-terraform.values.rg_main_location
  resource_group_name = data.tfe_outputs.learn-hcp-terraform.values.rg_main_name
  allocation_method   = "Static"
}

