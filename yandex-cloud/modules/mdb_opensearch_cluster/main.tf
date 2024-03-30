resource "yandex_mdb_opensearch_cluster" "cluster" {
  name                            = var.name
  description                     = var.desc != null ? var.desc : null
  folder_id                       = var.folder_id != null ? var.folder_id : null
  environment                     = var.env != null ? var.env : null
  network_id                      = var.vpc_id

  config {

    version                       = var.os_version != null ? var.os_version : null
    admin_password                = var.admin_pass

    opensearch {
      dynamic "node_groups" {
        for_each                  = var.node_groups
        content {
          name                    = node_groups.value.name
          assign_public_ip        = node_groups.value.public != null ? node_groups.value.public : null
          hosts_count             = node_groups.value.count
          zone_ids                = node_groups.value.zone_ids
          subnet_ids              = node_groups.value.subnet_ids != null ? node_groups.value.subnet_ids : null
          roles                   = node_groups.value.roles
          resources {
            resource_preset_id    = node_groups.value.tier
            disk_size             = node_groups.value.disk_size
            disk_type_id          = node_groups.value.disk_type_id
          }
        }
      }

      plugins                     = var.plugins != null ? var.plugins : null
    }

    dynamic "dashboards" {
      for_each                    = var.dashboard != null ? [1] : []
      content {
        node_groups {
          name                    = var.dashboard.name
          assign_public_ip        = var.dashboard.public != null ? var.dashboard.public : null
          hosts_count             = var.dashboard.count
          zone_ids                = var.dashboard.zone_ids
          subnet_ids              = var.dashboard.subnet_ids != null ? var.dashboard.subnet_ids : null
          resources {
            resource_preset_id    = var.dashboard.tier
            disk_size             = var.dashboard.disk_size
            disk_type_id          = var.dashboard.disk_type_id
          }
        }
      }
    }
  }

  security_group_ids              = var.sg_ids != null ? var.sg_ids : null
  service_account_id              = var.sa_id != null ? var.sa_id : null
  deletion_protection             = var.del_protection != null ? var.del_protection : null

  dynamic "maintenance_window" {
    for_each                    = var.maintenance != null ? [1] : []
    content {
      type                      = var.maintenance.type
      hour                      = var.maintenance.hour != null ? var.maintenance.hour : null
      day                       = var.maintenance.day != null ? var.maintenance.day : null
    }
  }

  labels = var.labels

}
