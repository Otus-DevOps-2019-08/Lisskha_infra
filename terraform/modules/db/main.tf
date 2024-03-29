resource "google_compute_instance" "db" {
  name         = var.name
  machine_type = var.type
  zone         = var.zone
  tags         = ["reddit-db"]
  boot_disk {
    initialize_params {
      image = var.db_disk_image
    }
  }

  metadata = {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }

  network_interface {
    network = "default"
    access_config {}
  }

  #  provisioner "remote-exec" {
  #    inline = [
  #      "sudo sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/g' /etc/mongod.conf",
  #      "sudo systemctl restart mongod",
  #    ]
  #  }

  #  connection {
  #    host        = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
  #    type        = "ssh"
  #    user        = "appuser"
  #    agent       = false
  #    private_key = file(var.private_key_path)
  #  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name    = "allow-mongo-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }
  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}

