resource "yandex_dns_zone_iam_binding" "default_role" {
  dns_zone_id     = var.zone_id
  role            = var.role
  members         = var.members
}
