provider "aws" {
	region = var.aws_region
}

data "aws_vpc" "default" {
	default = true
}

data "aws_subnet" "custom" {
		vpc_id = data.aws_vpc.default.id
		cidr_block = "172.31.0.0/24"
	
}

resource "aws_instance" "devops_node" {
	ami = var.ami_id
	instance_type = var.instance_type
	key_name = var.key_name
	subnet_id = data.aws_subnet.custom.id
	associate_public_ip_address = true

	tags = {
		Name = "DevOps-Battlefield"
	}
}

