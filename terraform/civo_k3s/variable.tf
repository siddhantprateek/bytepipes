variable "civo_token" {
  description = "Civo Cloud API token (https://www.civo.com/api)"
  type = string 
  default = ""
}

variable "civo_region" {
  description = "civo cloud cluster region"
  type = string 
  default = "LON1"
}

variable "civo_firewall_name" {
  description = "Name of civo firewall"
  type = string 
  default = "bytepipes_firewall"
}