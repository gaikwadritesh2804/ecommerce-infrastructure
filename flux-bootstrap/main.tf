
resource "flux_bootstrap_git" "main" {
  embedded_manifests = true

  path = "clusters/ecommerce-aks"

  version = "v2.7.5"

  delete_git_manifests = false
}
