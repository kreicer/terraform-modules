resource "yandex_kms_symmetric_key" "kms" {
  folder_id           = var.folder_id != null ? var.folder_id : null
  name                = var.kms_name
  description         = var.kms_desc != null ? var.kms_desc : null
  default_algorithm   = var.kms_algo != null ? var.kms_algo : null
  rotation_period     = var.kms_rotation != null ? var.kms_rotation : null
  deletion_protection = var.kms_protect

  labels              = var.labels
}
