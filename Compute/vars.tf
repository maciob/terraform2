variable "KEY_PATH"{
    default = "/home/ubuntu/MaciejBekasKey.pem"
}
variable "AWS_REGION" {    
    default = "eu-west-2"
}
variable "Subnet_IDs"{
    type = list(string)
}
variable "SEC_GROUP_ID"{
    type = string
}
variable "VPC_GROUP_ID"{
    type = string
}
variable "INSTANCES"{
    type = map(object({
        az = string
        ver = string
        name = string
        num = number
    }))
}
