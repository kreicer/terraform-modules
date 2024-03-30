module "zone" {
  source          = "../../modules/dns_zone"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  zone_name       = "default-zone"
  zone_dns        = "my.example.com."
  zone_public     = true
}

module "sa" {
  source          = "../../modules/iam_service_account"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  sa_name         = "default"
}

module "zone_role" {
  source          = "../../modules/dns_zone_iam_binding"

  zone_id         = module.zone.zone_id
  role            = "dns.viewer"
  members         = ["serviceAccount:${module.sa.sa_id}"]
}
