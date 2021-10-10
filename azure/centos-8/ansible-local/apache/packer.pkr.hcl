source "azure-arm" "web-server" {

  # Authentication
  tenant_id                         = var.arm_tenant_id
  client_id                         = var.arm_client_id
  client_secret                     = var.arm_client_secret
  subscription_id                   = var.arm_subscription_id

  # Location to build this image
  location                          = "australiasoutheast"

  # Name of the image once built
  managed_image_name                = "centos-8-web-server"

  # Name of the resource group that the finished images will exist in
  managed_image_resource_group_name = var.managed_image_resource_group_name

  # Source image
  image_offer                       = "CentOS"
  image_publisher                   = "OpenLogic"
  image_sku                         = "8_3"
  os_type                           = "Linux"

  # The default vm size `Standard_A1` takes an actual life time to build, changed to 2vcpu7gb
  vm_size                           = "Standard_DS2_v2"

  # Communication
  communicator = "ssh"
  ssh_username = "packer"
  ssh_password = "SuperS3cr3t!"
}

build {
  sources = ["source.azure-arm.web-server"]

  # Install Ansible in the VM
  provisioner "shell" {
    pause_before = "30s"
    execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
    inline_shebang  = "/bin/sh -x"
    inline          = [
                       "sudo yum install epel-release -y",
                       "sudo yum install ansible -y",
                      ]
  }

  # Copy our playbook to the VM
 # provisioner "file" {
 #   source = "ansible/playbook.yaml"
 #   destination = "/home/packer/playbook.yaml"
 # }

  # Run our playbook local to the VM
  provisioner "ansible-local" {
    playbook_file = "ansible/playbook.yaml"
  }

  # Run Azure deprovioning steps
  # https://www.packer.io/docs/builders/azure/arm#deprovision
  provisioner "shell" {
    execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
    inline_shebang  = "/bin/sh -x"
    inline          = [
                       "/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"
                      ]
  }
}
