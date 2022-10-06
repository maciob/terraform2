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
