variable "folder_id" {
  type          = string
  description   = "The ID of the folder that the resource belongs to."
  default       = null
}

variable  "kms_name" {
  type          = string
  description   = "Name of the key."
}

variable  "kms_desc" {
  type          = string
  description   = "An optional description of the key."
  default       = null
}

variable  "kms_algo" {
  type          = string
  description   = "Encryption algorithm to be used with a new key version, generated with the next rotation."
  default       = null
}

variable  "kms_rotation" {
  type          = string
  description   = "Interval between automatic rotations. To disable automatic rotation, omit this parameter."
  default       = null
}

variable "kms_protect" {
  type          = bool
  description   = "Protect key from deletion."
  default       = false
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the key."
  default           = {
    managed         = "terraform"
  }
}