module "disk" {
  source          = "../../modules/compute_disk"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  disk_name       = "default"
  disk_size       = 8
  disk_type       = "network-ssd"
  image_id        = "fd833v6c5tb0udvk4jo6"
}
