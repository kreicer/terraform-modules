resource "yandex_dns_zone" "dns_zone" {
  folder_id         = var.folder_id != null ? var.folder_id : null
  name              = var.zone_name
  description       = var.zone_desc != null ? var.zone_desc : null
  zone              = var.zone_dns
  public            = var.zone_public != null ? var.zone_public : null
  private_networks  = var.zone_public != true ? var.vpc_ids : null

  labels            = var.labels
}
