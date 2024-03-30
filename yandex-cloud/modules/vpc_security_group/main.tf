resource "yandex_vpc_security_group" "sg" {
  folder_id                   = var.folder_id != null ? var.folder_id : null
  name                        = var.sg_name
  description                 = var.sg_desc != null ? var.sg_desc : null
  network_id                  = var.vpc_id

  dynamic "ingress" {
    for_each                  = var.ingress_rules
    content {
      protocol                = ingress.value.protocol
      description             = ingress.value.description != null ? ingress.value.description : null
      from_port               = ingress.value.from_port != null ? ingress.value.from_port : null
      to_port                 = ingress.value.from_port != null ? ingress.value.to_port : null
      port                    = ingress.value.port != null ? ingress.value.port : null
      predefined_target       = ingress.value.predefined_target != null ? ingress.value.predefined_target : null
      v4_cidr_blocks          = ingress.value.v4_cidr_blocks != null ? ingress.value.v4_cidr_blocks : null
      # v6_cidr_blocks          = ingress.value.v6_cidr_blocks # currently not supported
      labels                  = ingress.value.labels != null ? ingress.value.labels : null
    }
  }

  dynamic "egress" {
    for_each                  = var.egress_rules
    content {
      protocol                = egress.value.protocol
      description             = egress.value.description != null ? egress.value.description : null
      from_port               = egress.value.from_port != null ? egress.value.from_port : null
      to_port                 = egress.value.from_port != null ? egress.value.to_port : null
      port                    = egress.value.port != null ? egress.value.port : null
      predefined_target       = egress.value.predefined_target != null ? egress.value.predefined_target : null
      v4_cidr_blocks          = egress.value.v4_cidr_blocks != null ? egress.value.v4_cidr_blocks : null
      # v6_cidr_blocks          = egress.value.v6_cidr_blocks # currently not supported
      labels                  = egress.value.labels != null ? egress.value.labels : null
    }
  }

  labels                      = var.labels
}
