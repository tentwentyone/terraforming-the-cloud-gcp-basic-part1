resource "google_dns_managed_zone" "master" {
  name          = "dns-master-zone"
  dns_name      = "${var.master_zone_dns_name}."
  description   = "Master zone (managed by terraform)"
  force_destroy = true
}

resource "google_service_account" "dns_admin" {
  account_id   = "dns-admin"
  display_name = "dns-admin"
  description  = "This ServiceAccount is responsible for managing DNS records."
}
