module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
    subnet_id_1 = module.Network.subnet_id_1
}
module "Network"{
    source = "./Network"
    MY_SUBNETS = var.MY_SUBNETS
    
}