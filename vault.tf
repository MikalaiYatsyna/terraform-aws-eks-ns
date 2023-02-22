module "vault" {
  source            = "app.terraform.io/logistic/vault/aws"
  version           = "0.0.2-snapshot"
  app_name          = local.vault_app_name
  consul_app_name   = local.consul_app_name
  domain            = var.domain
  stack             = var.stack
  tooling_namespace = kubernetes_namespace.tooling_namespace.metadata[0].name
  create_ingress    = var.create_ingress
  oidc_provider_arn = var.oidc_provider_arn
}
