terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.7.1"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.4.0"
    }
  }
  required_version = ">= 1.1.2"
}
