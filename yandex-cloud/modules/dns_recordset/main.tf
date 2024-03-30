resource "yandex_dns_recordset" "dns_recordset" {
  zone_id       = var.zone_id
  name          = var.record_name
  type          = var.record_type
  ttl           = var.record_ttl
  data          = var.record_data
}
