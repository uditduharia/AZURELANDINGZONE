


resource "azurerm_bastion_host" "azure_bastion" {

    for_each = var.azure_bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = "/subscriptions/94071485-796a-4f7e-9205-381343d2a695/resourceGroups/udit-rg1/providers/Microsoft.Network/virtualNetworks/devvnet/subnets/AzureBastionSubnet"
    public_ip_address_id = "/subscriptions/94071485-796a-4f7e-9205-381343d2a695/resourceGroups/udit-rg1/providers/Microsoft.Network/publicIPAddresses/bastion_pip"
  }
}