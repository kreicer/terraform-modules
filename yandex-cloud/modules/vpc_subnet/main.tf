resource "yandex_vpc_subnet" "subnet" {
  folder_id       = var.folder_id
  name            = var.subnet_name
  description     = var.subnet_desc
  v4_cidr_blocks  = var.subnet_cidr
  zone            = var.subnet_zone
  network_id      = var.vpc_id
  labels = {
        terraform   = "true"
  }
}
