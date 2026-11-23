provider "flux" {
  kubernetes = {
    config_path = pathexpand(var.kubeconfig_path)
  }

  git = {
    url    = var.github_repository_url
    branch = var.github_branch

    http = {
      username = "git"
      password = var.github_token
    }
  }
}
