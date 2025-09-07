variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "Region for the cluster"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the cluster will run"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for the cluster"
  type        = list(string)
}

variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
  type        = string
}

variable "node_service_account" {
  description = "Service account for nodes"
  type        = string
}
