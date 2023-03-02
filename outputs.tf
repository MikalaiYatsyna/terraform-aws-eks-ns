output "name" {
  description = "Name of created namespace"
  value       = kubernetes_namespace.namespace.metadata[0].name
}
