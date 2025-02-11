variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "vms" {
  description = "Configuration des machines virtuelles"
  type = map(object({
    vm_size      = string
    admin_username = string
    admin_password = string
  }))
  default = {
    "vm1" = {
      vm_size      = "Standard_B1s"
      admin_username = "adminuser"
      admin_password = "P@ssw0rd123!"
    },
    "vm2" = {
      vm_size      = "Standard_B1s"
      admin_username = var.admin_username
      admin_password = var.admin_password
    }
  }
}
