provider "google" {
  credentials = "account.json"
  project     = var.project_id
  region      = var.region
}

provider "google-beta" {
  credentials = "account.json"
  project     = var.project_id
  region      = var.region
}
