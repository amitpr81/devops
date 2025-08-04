resource "azurerm_resource_group" "aks" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "AKS cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
