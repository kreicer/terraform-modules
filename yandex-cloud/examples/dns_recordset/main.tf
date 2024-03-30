module "zone" {
  source          = "../../modules/dns_zone"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  zone_name       = "default-zone"
  zone_dns        = "my.example.com."
  zone_public     = true
}

module "zone_recordset" {
  source          = "../../modules/dns_recordset"

  zone_id         = module.zone.zone_id
  record_name     = "default"
  record_type     = "A"
  record_ttl      = 600
  record_data     = ["10.10.0.1"]
}
