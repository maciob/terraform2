module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
    Network = var.Network
}
module "Network"{
    source = "./Network"
    MY_SUBNETS = var.MY_SUBNETS
    Compute = var.Compute
}