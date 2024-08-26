terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}


variable "google_credentials" {
  type      = string
  sensitive = true
  default   = "" 
}

provider "google" {
    credentials = var.google_credentials
    project = "neon-rampart-433707-f3"
}

resource "google_storage_bucket" "my_bucket_1" {
  name          = "example-nhuhomework-bucket"
  location      = "us"
  force_destroy = true
}