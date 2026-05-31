resource "azurerm_resource_group" "codealpha_rg" {
  name     = "codealpha-terraform-rg"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "millicentterraformacr"
  resource_group_name = azurerm_resource_group.codealpha_rg.name
  location            = azurerm_resource_group.codealpha_rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "codealpha-aks"
  location            = azurerm_resource_group.codealpha_rg.location
  resource_group_name = azurerm_resource_group.codealpha_rg.name
  dns_prefix          = "codealphaaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}