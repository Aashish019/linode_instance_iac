variable "linode_token" {
  sensitive = true
  type      = string
}

variable "region" {
  type = string
  #   default = "us-east"
}

variable "type" {
  type = string
  #default = "g6-nanode-1" # Updated to smallest shared instance
}

variable "image" {
  type = string
  #default = "linode/ubuntu22.04"
}

variable "root_pass" {
  type = string
}
