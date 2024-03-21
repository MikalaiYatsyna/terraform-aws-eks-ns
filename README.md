![ci](https://github.com/MikalaiYatsyna/terraform-kubernetes-namespace/actions/workflows/ci.yml/badge.svg?branch=master)
![lint](https://github.com/MikalaiYatsyna/terraform-kubernetes-namespace/actions/workflows/lint.yml/badge.svg?branch=master)
![sec](https://github.com/MikalaiYatsyna/terraform-kubernetes-namespace/actions/workflows/tfsec.yml/badge.svg?branch=master)


## Introduction
Terraform module to create Kubernetes namespace in existing cluster.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.27.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.27.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace.namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/2.27.0/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_ca"></a> [cluster\_ca](#input\_cluster\_ca) | CA certificate of the cluster. | `string` | n/a | yes |
| <a name="input_cluster_endpoint"></a> [cluster\_endpoint](#input\_cluster\_endpoint) | Endpoint of the cluster. | `string` | n/a | yes |
| <a name="input_k8s_exec_args"></a> [k8s\_exec\_args](#input\_k8s\_exec\_args) | Args for Kubernetes provider exec plugin. Example command ['eks', 'get-token', '--cluster-name', '{clusterName}}'] | `list(string)` | n/a | yes |
| <a name="input_k8s_exec_command"></a> [k8s\_exec\_command](#input\_k8s\_exec\_command) | Command name for Kubernetes provider exec plugin. Example - 'aws | `string` | n/a | yes |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of the namespace to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Name of created namespace. |
<!-- END_TF_DOCS -->
