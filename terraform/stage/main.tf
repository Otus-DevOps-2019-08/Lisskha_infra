terraform {
  # Версия terraform
  required_version = "~> 0.12"
}

provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

resource "google_compute_project_metadata_item" "ssh-keys" {
  key   = "ssh-keys"
  value = "appuser:${file(var.public_key_path)}"
}

module "app" {
  # Относительный путь к расположению модуля для установки и настройки VM с приложением
  source          = "../modules/app"
  project         = var.project
  public_key_path = var.public_key_path
  # Юзаем внутренний ip машины с БД для подключения приложения к базе
  db_reddit_ip     = module.db.internal_ip
  private_key_path = var.private_key_path
  app_disk_image   = var.app_disk_image
}

module "db" {
  source           = "../modules/db"
  project          = var.project
  public_key_path  = var.public_key_path
  private_key_path = var.private_key_path
  db_disk_image    = var.db_disk_image
}

module "vpc" {
  source          = "../modules/vpc"
  project         = var.project
  public_key_path = var.public_key_path
}

