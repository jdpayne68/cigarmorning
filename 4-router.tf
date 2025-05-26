# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowarouter" {
  name    = "iowarouter"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "osaka1router" {
  name    = "osakarouter"
  region  = "asia-northeast2"
  network = google_compute_network.main.id
}
resource "google_compute_router" "saopaulo1router" {
  name    = "saopaulorouter"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}
resource "google_compute_router" "jarkarta1router" {
  name    = "jarkarta"
  region  = "asia-southeast2"
  network = google_compute_network.main.id
}

