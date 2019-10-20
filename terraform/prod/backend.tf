terraform {
  backend "gcs" {
    bucket = "bucket-jull"
    prefix = "terraform/prod"
  }
}

