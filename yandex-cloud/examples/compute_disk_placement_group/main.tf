module "group" {
  source          = "../../modules/compute_disk_placement_group"

  folder_id       = "b1guem0u1ksdc9lla7dv"
  pg_name         = "default"
  pg_desc         = "Default network"
  pg_zone         = "ru-central1-a"
}
