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
    
    egress {
        for_each = var.EGRESS
        from_port = each.value.from
        to_port = each.value.to
        protocol = each.value.prot
        cidr_blocks = each.value.cidr
    }
    ingress {
        for_each = var.INGRESS
        from_port = each.value.from
        to_port = each.value.to
        protocol = each.value.prot
        cidr_blocks = each.value.cidr
    }
    tags = {
        Name = "MaciejBekas-easy-sec-group"
    }
}
