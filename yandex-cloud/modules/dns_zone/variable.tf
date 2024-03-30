variable "folder_id" {
  type              = string
  description       = "ID of the folder to create a zone in."
  default           = null
}

variable "zone_name" {
  type              = string
  description       = "User assigned name of a specific resource."
}

variable  "zone_desc" {
  type              = string
  description       = "Description of the DNS zone."
  default           = null
}

variable  "zone_dns" {
  type              = string
  description       = "The DNS name of this zone, e.g. 'example.com.'. Must ends with dot."
}

variable  "zone_public" {
  type              = bool
  description       = "The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources."
  default           = null
}

variable  "vpc_ids" {
  type              = list
  description       = "For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from."
  default           = null
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the OpenSearch cluster."
  default           = {
    managed         = "terraform"
  }
}
