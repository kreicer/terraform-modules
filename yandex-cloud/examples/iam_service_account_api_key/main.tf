module "sa" {
  source                = "../../modules/iam_service_account"

  folder_id             = "b1guem0u1ksdc9lla7dv"
  sa_name               = "default"
}

module "sa_api_key" {
  source                = "../../modules/iam_service_account_api_key"

  sa_id                 = module.sa.sa_id
}
