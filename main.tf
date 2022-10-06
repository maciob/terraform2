module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
}
module "Network"{
    source = "./Network"
    MY_SUBNETS = var.MY_SUBNETS
}