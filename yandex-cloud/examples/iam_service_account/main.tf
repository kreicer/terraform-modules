module "sa" {
  source                = "../../modules/iam_service_account"

  folder_id             = "b1guem0u1ksdc9lla7dv"
  sa_name               = "default"
}
