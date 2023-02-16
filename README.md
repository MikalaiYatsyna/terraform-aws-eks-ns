## Introduction
Terraform module to create different tools required for applications

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.54.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.18.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_consul"></a> [consul](#module\_consul) | app.terraform.io/logistic/consul/aws | n/a |
| <a name="module_vault"></a> [vault](#module\_vault) | app.terraform.io/logistic/vault/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace.tooling_namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [aws_acm_certificate.acm_certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks_cluster_auth](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_ingress"></a> [create\_ingress](#input\_create\_ingress) | Flag to create ingress | `bool` | `true` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | Root application domain name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_stack"></a> [stack](#input\_stack) | Stack name | `string` | n/a | yes |
| <a name="input_tfe_eks_workspace_name"></a> [tfe\_eks\_workspace\_name](#input\_tfe\_eks\_workspace\_name) | Name of Terraform Cloud eks workspace | `any` | n/a | yes |
| <a name="input_tfe_organization"></a> [tfe\_organization](#input\_tfe\_organization) | Name of Terraform Cloud organization | `any` | n/a | yes |
| <a name="input_tooling_namespace"></a> [tooling\_namespace](#input\_tooling\_namespace) | Namespace for Consul release | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->