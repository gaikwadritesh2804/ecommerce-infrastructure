
variable "kubeconfig_path" {
  description = "Path to the AKS kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

variable "github_repository_url" {
  description = "HTTPS URL of the GitOps repository"
  type        = string
}

variable "github_branch" {
  description = "Git branch monitored by Flux"
  type        = string
  default     = "main"
}

variable "github_token" {
  description = "GitHub token used for Flux bootstrap"
  type        = string
  sensitive   = true
}
