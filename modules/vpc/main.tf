resource "google_compute_network" "vpc" {
  project = var.project_id
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_a" {
  name          = "${var.vpc_name}-subnet-a"
  ip_cidr_range = "10.10.1.0/24"
  project = var.project_id
  region        = var.region
  network       = google_compute_network.vpc.id
}

resource "google_compute_subnetwork" "subnet_b" {
  name          = "${var.vpc_name}-subnet-b"
  ip_cidr_range = "10.10.2.0/24"
  project = var.project_id
  region        = var.region
  network       = google_compute_network.vpc.id
}
