variable "aws_region" {
  type        = string
  description = "AWS region where resources will be created"
  default     = "us-west-2"
}

# variable "key_name" {
#   type        = string
#   description = "The name of the key pair for the EC2 instance" 
# }

variable subnet_cidr {
    type = string
    default = "172.16.10.0/24"
}
# variable "subnet_id" {
#   type        = string
#   description = "The ID of the subnet where the EC2 instance will be launched"
# }

variable vpc_cidr {
    type = string
    default = "172.16.0.0/16"
    description = "Provide vpc cidr block"
}
