variable "env" {
  type    = string
  default = "dev"
}

variable "vpc_name" {
  type    = string
  default = "terraform_vpc"
}

variable "pub_subnet_1a_name" {
  type    = string
  default = "tf_public_subnet_1a"
}

variable "pub_subnet_1c_name" {
  type    = string
  default = "tf_public_subnet_1c"
}

variable "priv_subnet_1a_name" {
  type    = string
  default = "tf_private_subnet_1a"
}

variable "priv_subnet_1c_name" {
  type    = string
  default = "tf_private_subnet_1c"
}

#variable "az_count" {
#   type    = number
#   default = 2
#}

#variable "enable_nat" {
#   type    = bool
#   default = true
#}

#variable "azs" {
#   type    = list(string)
#   default = ["us-east-1a", "us-east-1b"]
#}

#variable "instance_types" {
#   type = map(string)
#   default = {
#     dev  = "t3.micro"
#     prod = "t3.small"
#   }
#}

#variable "app" {
#   type = object({
#     name = string
#     port = number
#   })
#   default = {
#     name = "web"
#     port = 80
#   }
#}
