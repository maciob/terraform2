variable "AWS_REGION" {    
    default = "eu-west-2"
}
variable "KEY_PATH"{
    default = "/home/ubuntu/MaciejBekasKey.pem"
}
variable "VPC_NAME"{
    default = "MaciejBekas-easy-vpc"
}
variable "INSTANCES"{
    type = map(object({
        az = string
        ver = string
        name = string
    }))
}
variable "subnet_id_1"{
    type = string
    default = "XD"
}
