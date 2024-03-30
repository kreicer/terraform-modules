variable "folder_id" {
  type            = string
  description     = "ID of the folder to attach a policy to."
  default         = null
}

variable "role" {
  type            = string
  description     = "The role that should be assigned."
}

variable "account_type" {
  type            = string
  description     = "The identity type. One of: userAccount, serviceAccount, federatedUser, group, system."
  default         = "serviceAccount"
}

variable "account_id" {
  type      = string
  description     = "The identity ID. For account_type = system: name of system group."
}
