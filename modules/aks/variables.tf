
variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for AKS"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
}

variable "node_count" {
  description = "Number of AKS nodes"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "Azure VM size for AKS nodes"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for AKS nodes"
  type        = string
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
