output "api_key" {
  value       = yandex_iam_service_account_api_key.sa_api_key.secret_key
  sensitive   = true
}