
variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "subnet_name" {
  description = "AKS subnet name"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "AKS subnet address prefixes"
  type        = list(string)
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
