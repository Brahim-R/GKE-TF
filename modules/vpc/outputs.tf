output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "subnet_ids" {
  value = [
    google_compute_subnetwork.subnet_a.id,
    google_compute_subnetwork.subnet_b.id
  ]
}
