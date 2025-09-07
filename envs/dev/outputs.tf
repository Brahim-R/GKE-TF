output "gke_endpoint" {
  value = module.gke.cluster_endpoint
}

output "gke_cluster_name" {
  value = module.gke.cluster_name
}
