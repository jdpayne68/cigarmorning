# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket      = "cigarstate-1"
    prefix      = "terraform/state"
    credentials = "class6-jdp-b84b7eb72baa.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

