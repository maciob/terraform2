resource "aws_instance" "MaciejBekasDemoEasy" {
    for_each = var.INSTANCES
    ami = "ami-0f540e9f488cfa27d"
    instance_type = "t2.micro"
    availability_zone = each.value.az
    subnet_id = var.Subnet_IDs["${each.value.num}"]
    key_name = "MaciejBekasBootcampPL"
    vpc_security_group_ids = ["${var.SEC_GROUP_ID}"]
    user_data = file("docker.sh")
    credit_specification{
        cpu_credits = "unlimited"
    }
    tags = {
        Name = each.value.name
        created_by = "MaciejBekas"
        bootcamp = "poland1"        
    }
    volume_tags = {
        Name = each.value.name
        created_by = "MaciejBekas"
        bootcamp = "poland1"
    }
}

