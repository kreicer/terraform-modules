module "vpc" {
  source                = "../../modules/vpc_network"

  folder_id             = "b1guem0u1ksdc9lla7dv"
  vpc_name              = "default"
  vpc_desc              = "Default network"
}

module "subnet" {
  source                = "../../modules/vpc_subnet"

  folder_id             = "b1guem0u1ksdc9lla7dv"
  subnet_name           = "default"
  subnet_desc           = "Default network"
  subnet_cidr           = ["10.8.0.0/16"]
  subnet_zone           = "ru-central1-a"
  vpc_id                = module.vpc.vpc_id
}
