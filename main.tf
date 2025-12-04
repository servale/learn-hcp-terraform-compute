data "tfe_outputs" "learn-hcp-terraform" {
  workspace    = var.workspace_name
  organization = var.organization_name
}
locals {
  rg_main_name     = data.tfe_outputs.learn-hcp-terraform.values.rg_main_name
  rg_main_location = data.tfe_outputs.learn-hcp-terraform.values.rg_main_location
}
