terraform {
  backend "gcs" {
    bucket = "tf_bucket_brahim"
    prefix = "gke-cluster"
  }
}
