variable "stack" {
  type        = string
  description = "Stack name"
}

variable "tooling_namespace" {
  type        = string
  description = "Namespace for Consul release"
  default     = "tooling"
}

variable "domain" {
  type        = string
  description = "Root application domain name"
}

variable "create_ingress" {
  type        = bool
  description = "Flag to create ingress"
  default     = true
}

variable "oidc_provider_arn" {
  type        = string
  description = "OIDC provider arn"
}