module "vpc" {
  source                      = "../../modules/vpc_network"

  folder_id                   = "b1guem0u1ksdc9lla7dv"
  vpc_name                    = "default"
  vpc_desc                    = "Default network"
}

module "sg" {
  source                      = "../../modules/vpc_security_group"

  folder_id                   = "b1guem0u1ksdc9lla7dv"
  sg_name                     = "default_sg"
  vpc_id                      = module.vpc.vpc_id
  egress_rules                = [
    {
      protocol                = "ANY"
      description             = null
      from_port               = null
      to_port                 = null
      port                    = "-1"
      predefined_target       = null
      v4_cidr_blocks          = ["0.0.0.0/0"]
      labels                  = {
        managed               = "terraform"
      }
    }
  ]
  ingress_rules               = [
    {
      protocol                = "ANY"
      description             = "test rule"
      from_port               = 0
      to_port                 = 65535
      port                    = null
      predefined_target       = null
      v4_cidr_blocks          = ["127.3.1.0/24"]
      labels                  = {
        managed               = "terraform"
      }
    },
    {
      protocol                = "UDP"
      description             = "allow DNS"
      from_port               = null
      to_port                 = null
      port                    = 53
      predefined_target       = null
      v4_cidr_blocks          = ["127.3.1.0/24"]
      labels                  = {
        managed               = "terraform"
      }
    }
  ]
}
