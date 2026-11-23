
variable "resource_group_name" {
  type    = string
  default = "ecommerce-dev-rg"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "vnet_name" {
  type    = string
  default = "ecommerce-dev-vnet"
}

variable "acr_name" {
  description = "Globally unique ACR name; use only lowercase letters and numbers"
  type        = string
}

variable "cluster_name" {
  type    = string
  default = "ecommerce-dev-aks"
}

variable "dns_prefix" {
  type    = string
  default = "ecommerce-dev"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "vm_size" {
  type    = string
  default = "Standard_D2_v4"
}

variable "tags" {
  type = map(string)

  default = {
    Environment = "Dev"
    Project     = "Ecommerce"
    ManagedBy   = "Terraform"
  }
}

variable "subnet_name" {
  type    = string
  default = "ecommerce-dev-subnet"
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry"
  type        = string
  default     = "Basic"
}


variable "address_space" {
  description = "VNet address range"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "AKS subnet address ranges"
  type        = list(string)
}