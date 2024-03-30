module "sa" {
  source                = "../../modules/iam_service_account"

  folder_id             = "b1guem0u1ksdc9lla7dv"
  sa_name               = "default"
}

module "iam_member" {
  source                = "../../modules/resourcemanager_folder_iam_member"

  folder_id             = "b1guem0u1ksdc9lla7dv"
  role                  = "editor"
  account_type          = "serviceAccount"
  account_id            = module.sa.sa_id
}
