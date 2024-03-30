resource "yandex_iam_service_account_api_key" "sa_api_key" {
  service_account_id    = var.sa_id
  description           = var.api_key_desc != null ? var.api_key_desc : null
  pgp_key               = var.pgp_key != null ? var.pgp_key : null
}
