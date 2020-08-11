terraform {
  backend "gcs" {
    bucket  = "sviridov-tf-cloud"
    prefix  = "terraform/state/sviridov-tf-cloud-dev/web"
  }
}
