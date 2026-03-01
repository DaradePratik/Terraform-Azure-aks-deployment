variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster."
  type        = string 
}

variable "location" {
  description = "The location of the resource group."
  type        = string 
}

 variable "spn_name" {
  description = "The name of the Service Principal to be created for AKS."
  type        = string
 }

 variable "Keyvault_name" {
  description = "The name of the Key Vault to be created."
  type        = string
 }