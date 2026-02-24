output "service_principal_name" {
    description = "Name of the service principal"
    value = azuread_service_principal.aks_spn.display_name
}

output "service_principal_id" {
    description = "ID of the service principal"
    value = azuread_service_principal.aks_spn.id
}

output "service_principal_tenant_id" {
    description = "Tenant ID of the service principal"
    value = azuread_service_principal.aks_spn.application_tenant_id
}

output "client_id"{
    description = "Client ID of the azuread application"
    value = azuread_application.main.client_id
}

output "client_secret"{
    description = "Secret of the service principal"
    value = azuread_service_principal.aks_spn.value
}