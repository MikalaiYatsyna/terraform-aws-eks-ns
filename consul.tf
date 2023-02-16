module "consul" {
  source            = "app.terraform.io/logistic/consul/aws"
  app_name          = local.consul_app_name
  domain            = var.domain
  region            = var.region
  stack             = var.stack
  tooling_namespace = kubernetes_namespace.tooling_namespace.metadata[0].name
  create_ingress    = var.create_ingress
}