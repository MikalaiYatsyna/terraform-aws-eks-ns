output "name" {
  description = "Name of created namespacec"
  value = kubernetes_namespace.namespace.metadata[0].name
}
