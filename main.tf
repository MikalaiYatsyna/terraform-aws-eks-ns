locals {
  consul_app_name = "consul"
  vault_app_name = "vault"
}

resource "kubernetes_namespace" "tooling_namespace" {
  metadata {
    name = var.tooling_namespace
    labels = {
      stack                         = var.stack
      managedBy                     = "terraform"
    }
  }
}