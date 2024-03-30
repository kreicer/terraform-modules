resource "yandex_resourcemanager_folder_iam_member" "default_role" {
  folder_id     = var.folder_id != null ? var.folder_id : null
  role          = var.role
  member        = "${var.account_type}:${var.account_id}"
}
