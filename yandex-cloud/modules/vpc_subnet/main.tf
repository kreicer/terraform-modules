resource "yandex_vpc_subnet" "subnet" {
  folder_id                   = var.folder_id != null ? var.folder_id : null
  name                        = var.subnet_name
  description                 = var.subnet_desc != null ? var.subnet_desc : null
  v4_cidr_blocks              = var.subnet_cidr
  zone                        = var.subnet_zone
  network_id                  = var.vpc_id
  route_table_id              = var.route_table_id != null ? var.route_table_id : null

  dynamic "dhcp_options" {
      for_each                = var.dhcp_options != null ? [1] : []
      content {
        domain_name           = var.dhcp_options.domain_name != null ? var.dhcp_options.domain_name : null
        domain_name_servers   = var.dhcp_options.domain_name_servers != null ? var.dhcp_options.domain_name_servers : null
        ntp_servers           = var.dhcp_options.ntp_servers != null ? var.dhcp_options.ntp_servers : null
      }
    }

  labels                      = var.labels
}
