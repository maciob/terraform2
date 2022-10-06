module "Compute"{
    source = "./Modules/Compute"
    depends_on = module.Network
    Subnet_IDs = module.Network.Subnet_IDs
    SEC_GROUP_ID = module.Network.SEC_GROUP_ID
    VPC_GROUP_ID = module.Network.VPC_GROUP_ID

    INSTANCES = var.INSTANCES
    KEY_PATH = var.KEY_PATH
    instance_type = var.instance_type
    KEY_NAME = var.KEY_NAME
    created_by = var.created_by
    bootcamp = var.bootcamp
    ami = var.ami
}
module "Network"{
    source = "./Modules/Network"
    MY_SUBNETS = var.MY_SUBNETS
}