variable "folder_id" {
  type          = string
  description   = "ID of the folder that the service account will be created in."
  default       = null
}

variable "sa_name" {
  type          = string
  description   = "Name of the service account."
}

variable "sa_desc" {
  type          = string
  description   = "Description of the service account."
  default       = null
}
