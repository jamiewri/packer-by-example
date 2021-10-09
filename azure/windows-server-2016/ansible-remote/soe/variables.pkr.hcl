variable "arm_tenant_id" {
  type = string
  sensitive = true
  default = env("ARM_TENANT_ID")
}

variable "arm_client_id" {
  type = string
  sensitive = true
  default = env("ARM_CLIENT_ID")
}

variable "arm_client_secret" {
  type = string
  sensitive = true
  default = env("ARM_CLIENT_SECRET")
}

variable "arm_subscription_id" {
  type = string
  sensitive = true
  default = env("ARM_SUBSCRIPTION_ID")
}

variable "managed_image_resource_group_name" {
  type = string
  default = env("MANAGED_IMAGE_RESOURCE_GROUP_NAME")
}
