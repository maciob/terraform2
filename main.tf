module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
    Network = module.Network
}
module "Network"{
    source = "./Network"
    MY_SUBNETS = var.MY_SUBNETS
    Compute = module.Compute
}