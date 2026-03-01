module "Keyvault" {
  source  = "Azure/avm-res-keyvault-vault/azurerm"
  version = "0.10.2"
  location = var.location
  name = var.Keyvault_name
  resource_group_name = var.resource_group_name
  tenant_id = module.ServicePrincipal.service_principal_tenant_id

  role_assignments = {
    terraform_user = {
        role_definition_id_or_name = "Key Vault Administrator"
        principal_id         = module.ServicePrincipal.service_principal_id
    }
  }
    # secret definitions
  secrets = {
    spn_client_id = {
      name = "spn-client-id"
    }
    spn_client_secret = {
      name = "spn-client-secret"
    }
  }

  # secret values coming from SPN module
  secrets_value = {
    spn_client_id     = module.ServicePrincipal.client_id
    spn_client_secret = module.ServicePrincipal.client_secret
  }
}
