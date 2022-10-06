resource "aws_instance" "MaciejBekasDemoEasy" {
    for_each = var.INSTANCES
    ami = var.ami
    instance_type = var.instance_type
    availability_zone = each.value.az
    subnet_id = var.Subnet_IDs["${each.value.num}"]
    key_name = var.KEY_NAME
    vpc_security_group_ids = ["${var.SEC_GROUP_ID}"]
    user_data = file("docker.sh")
    credit_specification{
        cpu_credits = "unlimited"
    }
    tags = {
        Name = each.value.name
        created_by = var.created_by
        bootcamp = var.bootcamp      
    }
    volume_tags = {
        Name = each.value.name
        created_by = var.created_by
        bootcamp = var.bootcamp
    }
}

