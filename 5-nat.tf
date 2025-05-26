# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
#Iowa NAT
resource "google_compute_router_nat" "iowanat" {
  name   = "iowanat"
  router = google_compute_router.iowarouter.name
  region = "us-central1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.hqinternal.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.iowanat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "iowanat" {
  name         = "iowanat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}


#Osaka NAT
resource "google_compute_router_nat" "osakanat" {
  name   = "osakanat"
  router = google_compute_router.osaka1router.name
  region = "asia-northeast2"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.osaka1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }


  nat_ips = [google_compute_address.osakanat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "osakanat" {
  name         = "osakanat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = "asia-northeast2"
}
