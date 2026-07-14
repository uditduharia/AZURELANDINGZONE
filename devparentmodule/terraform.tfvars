rgs = {

    rg1 = {
        name = "udit-rg1"
        location = "central india"
    }

    rg2 = {
        name = "udit-rg2"
        location = "central india"
    }



}

vnets = {

    vnet1 = {

        name = "devvnet"
    resource_group_name = "udit-rg1"
    location = "central india"
    address_space = ["10.0.0.0/16"]
    }
}

subs = {

    subnet1 = {

        name = "frontendsubnet"
  resource_group_name = "udit-rg1"
  virtual_network_name = "devvnet"
  address_prefixes = ["10.0.1.0/24"]
    }

    subnet2 = {

        name = "backendsubnet"
  resource_group_name = "udit-rg1"
  virtual_network_name = "devvnet"
  address_prefixes = ["10.0.2.0/24"]
    }

    bastionsubnet = {

        name = "AzureBastionSubnet"
        resource_group_name = "udit-rg1"
  virtual_network_name = "devvnet"
  address_prefixes = ["10.0.3.0/26"]
    }
}

public_ip = {

    pip1 = {
        pip_name                = "bastion_pip"
  location            = "central india"
  resource_group_name = "udit-rg1"
  allocation_method   = "Static"
  sku                 = "Standard"
    }
}

# bastion = {
#     az_bastion ={

#          name                = "AzureBastionSubnet"
#   location            = "central india"
#   resource_group_name = "udit-rg1"


#     }
# }