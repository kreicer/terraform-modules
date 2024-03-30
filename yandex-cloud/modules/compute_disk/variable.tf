variable "folder_id" {
  type              = string
  description       = "The ID of the folder that the resource belongs to."
  default           = null
}

variable "disk_name" {
  type              = string
  description       = "Name of the disk."
}

variable "disk_desc" {
  type              = string
  description       = "Description of the disk."
  default           = null
}

variable "disk_zone" {
  type              = string
  description       = "Availability zone where the disk will reside."
  default           = null
}

variable "disk_size" {
  type              = number
  description       = "Size of the persistent disk, specified in GB. "
  default           = null
}

variable "disk_block_size" {
  type              = number
  description       = "Block size of the disk, specified in bytes."
  default           = null
}

variable "disk_type" {
  type              = string
  description       = "Type of disk to create."
  default           = null
}

variable "image_id" {
  type              = string
  description       = "The source image to use for disk creation. Cant be used with snap_id."
  default           = null
}

variable "snap_id" {
  type              = string
  description       = "The source snapshot to use for disk creation. Cant be used with image_id."
  default           = null
}

variable "disk_pg_id" {
  type              = string
  description       = "Specifies Disk Placement Group id. Can be used only with nonreplicated disks."
  default           = null
}

variable "labels" {
  type              = map
  description       = "A set of key/value label pairs to assign to the resource."
  default           = {
    managed         = "terraform"
  }
}
