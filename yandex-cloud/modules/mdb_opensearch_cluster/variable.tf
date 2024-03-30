variable "folder_id" {
  type              = string
  description       = "The ID of the folder that the resource belongs to."
  default           = null
}

variable "vpc_id" {
  type              = string
  description       = "ID of the network, to which the OpenSearch cluster belongs."
}

variable "name" {
  type              = string
  description       = "Name of the OpenSearch cluster."
}

variable "desc" {
  type              = string
  description       = "Description of the OpenSearch cluster."
  default           = null
}

variable "env" {
  type              = string
  description       = "Environment of the OpenSearch cluster. Can be either PRESTABLE or PRODUCTION."
  default           = "PRESTABLE"
}

variable "os_version" {
  type              = string
  description       = "Version of OpenSearch."
  default           = null
}

variable "admin_pass" {
  type              = string
  description       = "Password for admin user of OpenSearch."
}

variable "sg_ids" {
  type              = list(string)
  description       = "A set of ids of security groups assigned to hosts of the cluster."
  default           = null
}

variable "sa_id" {
  type              = string
  description       = "ID of the service account authorized for this cluster."
  default           = null
}

variable "del_protection" {
  type              = bool
  description       = "Inhibits deletion of the cluster. Can be either true or false."
  default           = null
}

variable "plugins" {
  type              = list(string)
  description       = "A set of requested OpenSearch plugins."
  default           = null
}

variable "node_groups" {
  type                = list(
    object(
      {
        name          = string
        public        = bool
        count         = number
        zone_ids      = list(string)
        subnet_ids    = list(string)
        roles         = list(string)
        tier          = string
        disk_size     = number
        disk_type_id  = string
      }
    )
  )
  description         = "Configuration for OpenSearch node groups."
  default             = [
    {
      name            = "default"
      public          = null
      count           = 1
      zone_ids        = ["ru-central1-a"]
      subnet_ids      = null
      roles           = ["DATA", "MANAGER"]
      tier            = "s2.micro"
      disk_size       = 10737418240
      disk_type_id    = "network-ssd"
    }
  ]
}

variable "dashboard" {
  type                = object(
      {
        name          = string
        public        = bool
        count         = number
        zone_ids      = list(string)
        subnet_ids    = list(string)
        tier          = string
        disk_size     = number
        disk_type_id  = string
      }
    )
  description         = "Configuration for Dashboards node groups."
  default             = null
}

variable "maintenance" {
  type                = object(
      {
        type          = string
        hour          = string
        day           = string
      }
    )
  description         = "Maintenance window"
  default             = null
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the resource."
  default           = {
    managed         = "terraform"
  }
}
