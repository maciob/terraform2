module "Compute"{
    source = "./Compute"
    INSTANCES = var.INSTANCES
    Subnet_IDs = module.Network.Subnet_IDs
    SEC_GROUP_ID = module.Network.SEC_GROUP_ID
    VPC_GROUP_ID = module.Network.VPC_GROUP_ID
}
module "Network"{
    source = "./Network"
    MY_SUBNETS = var.MY_SUBNETS
}