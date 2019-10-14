terraform {
  # Версия terraform
  required_version = "~> 0.12"
  #  required_providers {
  #    google = "~> 2.7"
  #  }
}

provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

resource "google_compute_project_metadata_item" "ssh-keys" {
  key   = "ssh-keys"
  value = "appuser:${file(var.public_key_path)} appuser1:${file(var.public_key_path)} appuser2:${file(var.public_key_path)}"
}

module "app" {
  source          = "../modules/app"
  project         = var.project
  public_key_path = var.public_key_path
  #  zone            = var.zone
  app_disk_image = var.app_disk_image
}

module "db" {
  source          = "../modules/db"
  project         = var.project
  public_key_path = var.public_key_path
  #  zone            = var.zone
  db_disk_image = var.db_disk_image
}

module "vpc" {
  source = "../modules/vpc"
  project         = var.project
  public_key_path = var.public_key_path
  #  zone            = var.zone
  source_ranges = ["5.18.211.26/32"]
}

