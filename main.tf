module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
    Subnet_IDs = module.Network.Subnet_IDs
}
module "Network"{
    source = "./Network"
    MY_SUBNETS = var.MY_SUBNETS
    
}