data "azuread_client_config" "current" {}

resource "azuread_application" "main" {
    display_name = var.spn_name
}

resource "azuread_service_principal" "aks_spn" {
  client_id                    = azuread_application.main.application_id
  app_role_assignment_required = true
  owners                       = [data.azuread_client_config.current]
}

resource "azuread_service_principal_password" "main" {
    service_principal_id = azuread_service_principal.aks_spn.id
  
}