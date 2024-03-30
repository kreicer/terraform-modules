module "vpc" {
  source          = "../../modules/vpc_network"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  vpc_name        = "default"
  vpc_desc        = "Default network"
}

module "zone" {
  source          = "../../modules/dns_zone"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  zone_name       = "default-zone"
  zone_dns        = "my.example.com."
  zone_public     = false
  vpc_ids         = ["${module.vpc.vpc_id}"]
}
