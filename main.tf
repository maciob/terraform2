module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
}
module "Network"{
    source = "./Network"
}