variable "ssh_user" {
  type    = string
  default = "packer"
}

variable "project" {
  type = string
  default = env("GCP_PROJECT")
}
