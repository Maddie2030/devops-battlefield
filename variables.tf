variable "aws_region" {
	type = string
	default = "us-east-1"
}

variable "ami_id" {
	type = string
	default = "ami-0e449927258d45bc4"
}

variable "instance_type" {
	type = string
	default = "t2.micro"
}

variable "key_name" {
	description = "Path to the key"
	type = string
	default = "docker-key"
}
