resource "google_compute_instance" "app" {
  name         = var.name
  machine_type = var.type
  zone         = var.zone
  tags         = ["reddit-app"]
  boot_disk {
    initialize_params { image = var.app_disk_image }
  }

  metadata = {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.app_ip.address
    }
  }
}

resource "google_compute_address" "app_ip" {
  name = "reddit-app-ip"
}

# Используем ресурс null_resource для того, чтобы подцепить провижинеров
resource "null_resource" "post-install" {
  connection {
    # Конекаемся к машине с приложением (reddit-app) по внешнему ip
    host        = google_compute_instance.app.network_interface.0.access_config.0.nat_ip
    type        = "ssh"
    agent       = false
    user        = "appuser"
    private_key = file(var.private_key_path)
  }

  # Вписываем внутренний ip машины с mongodb
  provisioner "remote-exec" {
    inline = [
      "sudo echo DATABASE_URL=${var.db_reddit_ip} > /tmp/puma.env",
    ]
  }

  # Запускаем на машине с приложением скрипт с установкой и запуском приложения
  provisioner "remote-exec" {
    script = "${path.module}/files/deploy.sh"
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name    = "allow-puma-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]
}

