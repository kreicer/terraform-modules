module "vpc" {
  source              = "../../modules/vpc_network"

  folder_id           = "b1guem0u1ksdc9lla7dv"
  vpc_name            = "default"
  vpc_desc            = "Default network"
}

module "subnet" {
  source              = "../../modules/vpc_subnet"

  folder_id           = "b1guem0u1ksdc9lla7dv"
  subnet_name         = "default"
  subnet_desc         = "Default network"
  subnet_cidr         = ["10.8.0.0/16"]
  subnet_zone         = "ru-central1-a"
  vpc_id              = module.vpc.vpc_id
}

module "opensearch_cluster" {
  source              = "../../modules/mdb_opensearch_cluster"

  folder_id           = "b1guem0u1ksdc9lla7dv"
  vpc_id              = module.vpc.vpc_id
  name                = "default"
  admin_pass          = "123456qwerty"
  node_groups         = [
    {
      name            = "default"
      count           = 1
      zone_ids        = ["ru-central1-a"]
      tier            = "s2.micro"
      disk_size       = 10737418240
      disk_type_id    = "network-ssd"
      public          = null
      subnet_ids      = null
      roles           = ["DATA", "MANAGER"]
    }
  ]
}