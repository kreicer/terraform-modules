variable "folder_id" {
  type              = string
  description       = "The ID of the folder that the resource belongs to."
  default           = null
}

variable "vpc_id" {
  type              = string
  description       = "ID of the network this subnet belongs to."
}

variable "subnet_name" {
  type              = string
  description       = "Name of the subnet."
  default           = "default_subnet"
}

variable "subnet_desc" {
  type              = string
  description       = "An optional description of the subnet."
  default           = null
}

variable "subnet_cidr" {
  type              = list
  description       = "A list of blocks of internal IPv4 addresses that are owned by this subnet."
}

variable "subnet_zone" {
  type              = string
  description       = "Name of the Yandex.Cloud zone for this subnet."
}

variable "route_table_id" {
  type              = string
  description       = "The ID of the route table to assign to this subnet. Assigned route table should belong to the same network as this subnet."
  default           = null
}

variable "dhcp_options" {
  type              = object(
    {
      domain_name         = string
      domain_name_servers = list(string)
      ntp_servers         = list(string)
    }
  )
  description       = "Options for DHCP client."
  default           = null
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the OpenSearch cluster."
  default           = {
    managed         = "terraform"
  }
}
