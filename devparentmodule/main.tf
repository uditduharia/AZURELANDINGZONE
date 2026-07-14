

module "rg" {

    source = "../childmodules/azurerm_resource_group"
    

    resource_groups = var.rgs

}

module "vnet" {
    source = "../childmodules/azurerm_virtual_network"

    depends_on = [ module.rg ]

    virtual_network = var.vnets
}


module "subnets" {

    source = "../childmodules/azurerm_subnet"
    depends_on = [ module.vnet ]

    azure_subnet = var.subs
}


module "public_ip" {

    source = "../childmodules/azurerm_public_ip"
    depends_on = [ module.rg ]

    pip = var.public_ip
}

# module "bastion" { 
#     source = "../childmodules/azure_bastion"

#     depends_on = [ module.public_ip ]

#     azure_bastion = var.bastion
  
# }