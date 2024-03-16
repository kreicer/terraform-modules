variable "folder_id" {
  type      = string
}

variable "vpc_id" {
  type      = string
}

variable "subnet_name" {
  type      = string
  default   = "default-subnet"
}

variable "subnet_desc" {
  type      = string
  default   = "Default subnet"
}

variable "subnet_cidr" {
  type      = list
}

variable "subnet_zone" {
  type      = string
}
