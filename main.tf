terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "neon-rampart-433707-f3"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "example-nhu-bucket"
  location      = "asia"
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = 30
    }
  }

  versioning {
    enabled = true
  }

}

resource "google_storage_bucket" "my_bucket_1" {
  name          = "example-nhuhomework-bucket"
  location      = "us"
  force_destroy = true
}