variable "KEY_PATH"{
    default = "/home/ubuntu/MaciejBekasKey.pem"
}
variable "instance_type"{
    default = "aws_lb_target_group.target_group.arn"
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
