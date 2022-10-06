#======== COMPUTE
INSTANCES = {
  "a" = {
    az   = "eu-west-2a"
    ver  = "a" 
    name = "MaciejBekasDemoEasy"
    num = 0
  },
  "b" = {
    az   = "eu-west-2b"
    ver  = "b"
    name = "MaciejBekasDemoEasy2"
    num = 1
  }
}
KEY_PATH = "/home/ubuntu/MaciejBekasKey.pem"
instance_type = "t2.micro"
KEY_NAME = "MaciejBekasBootcampPL"
created_by = "MaciejBekas"
bootcamp = "poland1"
ami = "ami-0f540e9f488cfa27d"

#======== NETWORK

MY_SUBNETS = {
  "a" = {
    cidr = "10.0.0.0/28"
    az   = "eu-west-2a"
  },
  "b" = {
    cidr = "10.0.0.16/28"
    az   = "eu-west-2b"
  }
}



EGRESS = {
  "a" = {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}
INGRESS = {
  "a" = {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  "b" = {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  "c" = {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}