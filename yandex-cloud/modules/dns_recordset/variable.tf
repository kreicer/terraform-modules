variable "zone_id" {
  type          = string
  description   = "The id of the zone in which this record set will reside."
}

variable  "record_name" {
  type          = string
  description   = "The DNS name this record set will apply to."
}

variable  "record_type" {
  type          = string
  description   = "The DNS record set type."
}

variable  "record_ttl" {
  type          = number
  description   = "The time-to-live of this record set (seconds)."
}

variable  "record_data" {
  type          = list
  description   = "The string data for the records in this record set."
}
