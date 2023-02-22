resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.tooling_namespace
    labels = {
      stack     = var.stack
      managedBy = "terraform"
    }
  }
}

