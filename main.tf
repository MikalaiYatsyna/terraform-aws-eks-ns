resource "kubernetes_namespace" "tooling_namespace" {
  metadata {
    name = var.tooling_namespace
    labels = {
      stack     = var.stack
      managedBy = "terraform"
    }
  }
}
