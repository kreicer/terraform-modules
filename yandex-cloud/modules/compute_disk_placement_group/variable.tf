variable "folder_id" {
  type              = string
  description       = "The ID of the folder that the resource belongs to."
  default           = null
}

variable "pg_name" {
  type              = string
  description       = "The name of the Disk Placement Group."
  default           = "default"
}

variable "pg_desc" {
  type              = string
  description       = "A description of the Disk Placement Group."
  default           = null
}

variable "pg_zone" {
  type              = string
  description       = "ID of the zone where the Disk Placement Group resides."
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the resource."
  default           = {
    managed         = "terraform"
  }
}
