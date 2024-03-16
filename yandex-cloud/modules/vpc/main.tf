resource "yandex_vpc_network" "network" {
  folder_id       = var.folder_id
  name            = var.vpc_name
  description     = var.vpc_desc
  labels = {
    terraform     = "true"
  }
}
