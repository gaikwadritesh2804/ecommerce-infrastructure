variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string

}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure Container Registry."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the Azure Container Registry."
  type        = string
}

variable "acr_sku" {
  description = "Azure Container Registry pricing tier"
  type        = string
  default     = "Basic"
}


variable "tags" {
  description = "A map of tags to assign to the Azure Container Registry."
  type        = map(string)
}

