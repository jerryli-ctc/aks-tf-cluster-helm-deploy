
output "host" {
  value       = try(module.aks.host, null)
  description = "The Kubernetes cluster server host"
}

output "client_key" {
  value       = try(module.aks.client_key, null)
  description = "Base64 encoded private key used by clients to authenticate to the Kubernetes cluster"
}

output "client_certificate" {
  value       = try(module.aks.client_certificate, null)
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster"
}

output "kube_config" {
  value       = try(module.aks.kube_config_raw, null)
  description = "kubeconfig yaml file"
  sensitive   = "true"
}
