module "ServicePrincipal" {
  source = "./modules/ServicePrincipal"
  spn_name = var.spn_name
}

resource "azurerm_role_assignment" "rolespn" {
  scope = "/subscriptions/$(var.Sub_ID)"
  role_definition_name = "Contributor"
  principal_id = module.ServicePrincipal.service_principal_id

  depends_on = [ module.ServicePrincipal ]
}