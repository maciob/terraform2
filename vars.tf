variable "AWS_REGION" {    
    default = "eu-west-2"
}

variable "KEY_PATH"{
    type = string
    default = "/home/ubuntu/MaciejBekasKey.pem"
}
variable "instance_type"{
    type = string
    default = "t2.micro"
}
variable "KEY_NAME"{
    type = string
    default = "MaciejBekasBootcampPL"
}
variable "created_by"{
    type = string
    default = "MaciejBekas"
}
variable "bootcamp"{
    type = string
    default = "poland1"
}
variable "ami"{
    type = string
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

variable "MY_SUBNETS"{
    type = map(object({
        cidr = string
        az = string
    }))
}
variable "INSTANCES"{
    type = map(object({
        az = string
        ver = string
        name = string
        num = number
    }))
}
