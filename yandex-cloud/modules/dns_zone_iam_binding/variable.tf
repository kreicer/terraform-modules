variable "zone_id" {
  type            = string
  description     = "The DNS Zone ID to apply a binding to."
}

variable "role" {
  type            = string
  description     = "The role that should be applied. "
}

variable "members" {
  type            = list(string)
  description     = "Identities that will be granted the privilege in role. List of: userAccount:{user_id}, serviceAccount:{service_account_id}, federatedUser:{federated_user_id}, group:{group_id}, system:{allUsers|allAuthenticatedUsers}"
}
