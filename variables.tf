variable "application_name" {
  type = string
}
variable "environment_name" {
  type = string
}
variable "primary_location" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "subscription_id" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "base_address_space" {
  type = string
}

variable "workspace_name" {
  description = "Name of the source workspace to query."
  type        = string
  default     = "learn-hcp-terraform"
}
variable "organization_name" {
  description = "Name of the HCP Terraform organization with the source workspace"
  type        = string
}

