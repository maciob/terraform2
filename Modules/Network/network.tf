resource "aws_internet_gateway" "MaciejBekas-easy-igw" {
    vpc_id = aws_vpc.MaciejBekas-easy-vpc.id
    tags = {
        Name = "MaciejBekas-easy-igw"
    }
}

resource "aws_route_table" "MaciejBekas-easy-public-crt" {
    vpc_id = aws_vpc.MaciejBekas-easy-vpc.id
    
    route {
        cidr_block = "0.0.0.0/0" 
        gateway_id = aws_internet_gateway.MaciejBekas-easy-igw.id
    }
    tags = {
        Name = "MaciejBekas-public-crt"
    }
}

resource "aws_route_table_association" "MaciejBekas-easy-crta-public-subnet"{
    for_each = var.MY_SUBNETS
    subnet_id = aws_subnet.MY_SUBNETS[each.key].id
    route_table_id = aws_route_table.MaciejBekas-easy-public-crt.id
}

resource "aws_security_group" "MaciejBekas-easy-sec-group" {
    vpc_id = aws_vpc.MaciejBekas-easy-vpc.id
    dynamic egress {
        for_each = toset(var.EGRESS)
        content{
            from_port = lookup(each.value, "from", null)
            to_port = lookup(each.value, "to", null)
            protocol = lookup(each.value, "prot", null)
            cidr_blocks = lookup(each.value, "cidr", null)
        }
    }
    dynamic ingress {
        for_each = toset(var.INGRESS)
        content{
            from_port = lookup(each.value, "from", null)
            to_port = lookup(each.value, "to", null)
            protocol = lookup(each.value, "prot", null)
            cidr_blocks = lookup(each.value, "cidr", null)
        }
    }
    tags = {
        Name = "MaciejBekas-easy-sec-group"
    }
}
