variable "KEY_PATH"{
    default = "/home/ubuntu/MaciejBekasKey.pem"
}
variable "instance_type"{
    default = "t2.micro"
}
variable "KEY_NAME"{
    default = "MaciejBekasBootcampPL"
}
variable "created_by"{
    default = "MaciejBekas"
}
variable "bootcamp"{
    default = "poland1"
}
variable "ami"{
    default = "ami-0f540e9f488cfa27d"
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
