# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.255.1.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "osaka1" {
  name                     = "osaka1"
  ip_cidr_range            = "10.255.76.0/24"
  region                   = "asia-northeast2"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "osaka2" {
  name                     = "osaka2"
  ip_cidr_range            = "10.255.77.0/24"
  region                   = "asia-northeast2"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "osaka3" {
  name                     = "osaka3"
  ip_cidr_range            = "10.255.78.0/24"
  region                   = "asia-northeast2"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "saopaulo1" {
  name                     = "saopaulo1"
  ip_cidr_range            = "10.255.46.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "jarkarta1" {
  name                     = "jarkarta1"
  ip_cidr_range            = "10.255.26.0/24"
  region                   = "asia-southeast2"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
