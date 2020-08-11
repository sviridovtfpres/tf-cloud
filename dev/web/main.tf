resource "google_project_service" "compute_service" {
  project                     = var.project_web_id
  service                     = "compute.googleapis.com"
  disable_on_destroy          = false
}

resource "google_compute_instance" "web" {
  name         = "web-${var.env}"
  project      = var.project_web_id
  machine_type = var.web_machine_type
  zone         = "${var.region}-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

}
