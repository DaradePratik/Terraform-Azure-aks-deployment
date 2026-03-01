module "avm-res-keyvault-vault" {
  source  = "Azure/avm-res-keyvault-vault/azurerm"
  version = "0.10.2"
  location = var.location
  name = var.Keyvault_name
  resource_group_name = var.resource_group_name
  tenant_id = module.ServicePrincipal.service_principal_tenant_id

}