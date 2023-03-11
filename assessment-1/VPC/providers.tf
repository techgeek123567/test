terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.0"
    }
  }
}

provider "google" {
  credentials = file("key.json") ## The Key generated from the service account of your project in GCP in (.json) format.
  project     = var.project-id
  region      = var.region

}
