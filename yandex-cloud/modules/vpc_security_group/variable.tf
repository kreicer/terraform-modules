variable "folder_id" {
  type                      = string
  description               = "The ID of the folder that the resource belongs to."
  default                   = null
}

variable "vpc_id" {
  type                      = string
  description               = "ID of the network this security group belongs to."
}

variable "sg_name" {
  type                      = string
  description               = "Name of the security group."
}

variable "sg_desc" {
  type                      = string
  description               = "Description of the security group."
  default                   = null
}

variable "ingress_rules" {
  type                      = list(
    object(
      {
        protocol            = string
        description         = string
        from_port           = number
        to_port             = number
        port                = number
        predefined_target   = string
        v4_cidr_blocks      = list(string)
        # v6_cidr_blocks    = list(string)
        labels              = map(string)
      }
    )
  )
  description               = "A list of ingress rules."
  default                   = []
}

variable "egress_rules" {
  type                      = list(
    object(
      {
        protocol            = string
        description         = string
        from_port           = number
        to_port             = number
        port                = number
        predefined_target   = string
        v4_cidr_blocks      = list(string)
        # v6_cidr_blocks    = list(string)
        labels              = map(string)
      }
    )
  )
  description               = "A list of egress rules."
  default                   = []
}

variable "labels" {
  type                      = map
  description               = "A set of key/value label pairs to assign to the OpenSearch cluster."
  default                   = {
    managed                 = "terraform"
  }
}

