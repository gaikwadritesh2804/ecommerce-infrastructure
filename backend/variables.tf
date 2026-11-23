
variable "resource_group_name" {
  description = "Resource group for Terraform state"
  type        = string
  default     = "ecommerce-tfstate-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "storage_account_name" {
  description = "Globally unique lowercase storage account name"
  type        = string
}
