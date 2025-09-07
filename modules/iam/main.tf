# Service account for GKE nodes
resource "google_service_account" "nodes" {
  project = var.project_id
  account_id   = "gke-nodes-sa"
  display_name = "GKE Nodes Service Account"
}
