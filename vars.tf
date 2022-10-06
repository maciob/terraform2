variable "AWS_REGION" {    
    default = "eu-west-2"
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
