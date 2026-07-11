module "aks" {
  source                 = "./modules/aks/"
  name                   = var.aks_cluster_name
  service_principal_name = var.spn_name
  client_id              = module.ServicePrincipal.client_id
  client_secret          = module.ServicePrincipal.client_secret
  location               = var.location
  resource_group_name    = var.resource_group_name
  key_vault_id           = module.keyvault.key_vault_id 

  depends_on = [
    module.ServicePrincipal
  ]

}