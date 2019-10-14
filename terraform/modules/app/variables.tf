variable project {
  description = "Project ID"
}

variable name {
  description = "Name VM"
  default     = "reddit-app"
}

variable type {
  description = "Type VM"
  default     = "g1-small"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

