resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.region
  project = var.project_id

  network    = var.vpc_id
  subnetwork = element(var.subnet_ids, 0) 
  deletion_protection      = false
  remove_default_node_pool = true
  initial_node_count       = 1

  ip_allocation_policy {} 
}

# Create a separate node pool with 2 nodes 
resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.cluster_name}-node-pool"
  location   = "us-east1"
  cluster    = google_container_cluster.gke_cluster.name
  node_count = var.node_count
  project = var.project_id

  node_config {
    machine_type    = var.machine_type
    disk_size_gb = "20"
    service_account = var.node_service_account
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}
