module "vault" {
  source            = "app.terraform.io/logistic/vault/aws"
  app_name          = local.vault_app_name
  consul_app_name   = local.consul_app_name
  domain            = var.domain
  region            = var.region
  stack             = var.stack
  tooling_namespace = kubernetes_namespace.tooling_namespace.metadata[0].name
  create_ingress    = var.create_ingress

  tfe_organization       = var.tfe_organization
  tfe_eks_workspace_name = var.tfe_eks_workspace_name
}
