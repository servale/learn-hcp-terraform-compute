data "tfe_outputs" "source_workspace" {
  workspace    = var.workspace_name
  organization = var.organization_name
}
