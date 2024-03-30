resource "yandex_iam_service_account" "service_account" {
    folder_id   = var.folder_id != null ? var.folder_id : null
    name        = var.sa_name
    description = var.sa_desc != null ? var.sa_desc : null
}
