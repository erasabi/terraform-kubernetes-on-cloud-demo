variable "path" {
  default = "/Users/erasabi/.keys/terraform"
}


provider "google" {
  credentials = file("${var.path}/terraform-demo-407305-69480c7fbd53.json")
  project = "terraform-demo-301721"
  region  = "us-central1"
  zone    = "us-central1-a"
}

provider "google-beta" {
  credentials = file("${var.path}/terraform-demo-407305-69480c7fbd53.json")
  project = "terraform-demo-301721"
  region  = "us-central1"
  zone    = "us-central1-a"
}