output "app_ex_ips" {
  value = google_compute_instance.app[*].network_interface[0].access_config[0].nat_ip
}

output "lb_ex_ip" {
  value = google_compute_forwarding_rule.lb-fw.ip_address
}

