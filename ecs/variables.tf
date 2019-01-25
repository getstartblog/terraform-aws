variable "region" {
  default = "us-east-1"
}

variable "ecs_cluster" {
	default  = "my-cluster"
}
variable "key_pair_name" {
	default = "baston-key"
}
variable "max_instance_size"{
	default = 5
}
variable "min_instance_size" {
	default = 2
}

variable "desired_capacity" {
	default  = 3
}

variable "ami" {
   type    = "map"
   default = {
    "us-east-1" = "ami-0a6b7e0cc0b1f464f"
    "us-west-2" = "ami-037a92bf1efdb11a2"
    "us-west-1" = "ami-0184f498956de7db5"
    "us-west-2" = "ami-0c1f4871ebaae6d86"
  }
}

data "aws_availability_zones" "azs" {}

variable "vpc_cidr" {
  default ="10.100.0.0/16"
}
variable "subnet_cidr" {
  type ="list"
  default = ["10.100.1.0/24", "10.100.2.0/24","10.100.3.0/24"]
}
