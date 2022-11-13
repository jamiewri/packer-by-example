variable "source_ami" {
  type = string
}

variable "ami_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "ssh_username" {
  type    = string
  default = "centos"
}
