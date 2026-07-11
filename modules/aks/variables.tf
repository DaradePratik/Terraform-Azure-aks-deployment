variable "location" {
  type = string  
}

 variable "resource_group_name" {
    type = string
 }

variable "service_principal_name" {
  type = string
}

variable "name" {
  description = "Name of the aks cluster"
  type = string
}

variable "key_vault_id" {
  description = "ID of the key vault"
  type = string
}

variable "client_id" {
  description = "Client ID of the service principal"
  type = string
}

variable "client_secret" {
  description = "Client secret of the service principal"
  type = string
  sensitive = true
}