variable "sa_id" {
  type          = string
  description   = "ID of the service account to an API key for."
}

variable "api_key_desc" {
  type          = string
  description   = "The description of the key."
  default       = null
}

variable "pgp_key" {
  type          = string
  description   = "An optional PGP key to encrypt the resulting secret key material. May either be a base64-encoded public key or a keybase username in the form keybase:keybaseusername."
  default       = null
}
