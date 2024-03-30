resource "yandex_compute_disk" "disk" {
  folder_id                     = var.folder_id != null ? var.folder_id : null
  name                          = var.disk_name
  description                   = var.disk_desc != null ? var.disk_desc : null
  zone                          = var.disk_zone != null ? var.disk_zone : null
  size                          = var.disk_size != null ? var.disk_size : null
  block_size                    = var.disk_block_size != null ? var.disk_block_size : null
  type                          = var.disk_type != null ? var.disk_type : null
  image_id                      = var.image_id != null ? var.image_id : null
  snapshot_id                   = var.image_id == null ? var.snap_id : null

  dynamic "disk_placement_policy" {
    for_each                    = var.disk_pg_id != null ? [1] : []
    content {
      disk_placement_group_id   = var.disk_pg_id
    }
  }

  labels                        = var.labels
}