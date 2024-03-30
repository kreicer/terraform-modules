resource "yandex_compute_disk_placement_group" "placement_group" {
  folder_id       = var.folder_id != null ? var.folder_id : null
  name            = var.pg_name
  description     = var.pg_desc != null ? var.pg_desc : null
  zone            = var.pg_zone
  labels          = var.labels
}
