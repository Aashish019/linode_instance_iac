terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = ">= 2.35.0"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_instance" "my_instance" {
  label     = "terraform-instance"
  region    = var.region
  type      = var.type
  image     = var.image
  root_pass = var.root_pass
  #authorized_keys = [file("~/.ssh/id_rsa.pub")] # Change to the correct public SSH key path

  #   lifecycle {
  #     ignore_changes = ["root_pass"]
  #   }
}

output "ip_address" {
  value = linode_instance.my_instance.ip_address
}
