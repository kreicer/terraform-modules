variable "folder_id" {
  type              = string
  description       = "The ID of the folder that the resource belongs to."
  default           = null
}

variable "vpc_name" {
  type              = string
  description       = "Name of the network."
  default           = "default"
}

variable "vpc_desc" {
  type              = string
  description       = "An optional description of this resource."
  default           = null
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the OpenSearch cluster."
  default           = {
    managed         = "terraform"
  }
}
