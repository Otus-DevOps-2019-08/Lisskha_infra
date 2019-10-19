#output "app_ex_ips" {
#  value = google_compute_instance.app[*].network_interface[0].access_config[0].nat_ip
#}

output "app_ex_ip" {
  value = "${module.app.app_external_ip}"
}

output "db_int_ip" {
  value = "${module.db.internal_ip}"
}

