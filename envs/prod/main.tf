module "vpc" {
  source   = "../../modules/vpc"
  vpc_name = "dev-vpc"
  region   = var.region
}

module "iam" {
  source = "../../modules/iam"
}

module "gke" {
  source              = "../../modules/gke"
  cluster_name        = "dev-gke-cluster"
  region              = var.region
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.subnet_ids
  node_count          = 2
  machine_type        = "e2-micro" 
  node_service_account = module.iam.node_service_account_email
}
