resource "yandex_vpc_network" "network" {
  folder_id       = var.folder_id != null ? var.folder_id : null
  name            = var.vpc_name
  description     = var.vpc_desc != null ? var.vpc_desc : null
  labels          = var.labels
}
