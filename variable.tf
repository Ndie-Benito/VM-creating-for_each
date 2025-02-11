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
    
  }))
  default = {
    "vm1" = {
      vm_size      = "Standard_B1s"
     
    },
    "vm2" = {
      vm_size      = "Standard_B1s"
  
    }
  }
}
variable "admin_username" {
  type        = string
  description = "Nom d'utilisateur administrateur de la VM"
}

variable "admin_password" {
  type        = string
  description = "Mot de passe administrateur de la VM"
  sensitive   = true
}
