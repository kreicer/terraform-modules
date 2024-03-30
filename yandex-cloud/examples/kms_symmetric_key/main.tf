module "kms" {
  source          = "../../modules/kms_symmetric_key"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  kms_name        = "default"
  kms_algo        = "AES_128"
  kms_rotation    = "8760h"
  kms_protect     = true
}
