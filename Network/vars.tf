variable "MY_SUBNETS"{
    type = map(object({
        cidr = string
        az = string
    }))
}