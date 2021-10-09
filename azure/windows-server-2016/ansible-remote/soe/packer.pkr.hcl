source "azure-arm" "windows-2016" {

  # Authentication
  tenant_id                         = var.arm_tenant_id
  client_id                         = var.arm_client_id
  client_secret                     = var.arm_client_secret
  subscription_id                   = var.arm_subscription_id

  # Location to build the image
  location = "australiasoutheast"

  # Name of the image once built
  managed_image_name                = "windows-server-2016"

  # Name of the resource group that the finish images will exist in
  managed_image_resource_group_name = var.managed_image_resource_group_name

  
  # Source image
  image_offer                       = "WindowsServer"
  image_publisher                   = "MicrosoftWindowsServer"
  image_sku                         = "2016-Datacenter"
  os_type                           = "Windows"

  # Misc
  communicator                      = "winrm"

  # The default vm size `Standard_A1` takes an actual life time to build, changed to 2vcpu7
  vm_size                           = "Standard_D2_v2"
  custom_data_file                  = "scripts/enableWinRM.ps1"

  # WinRM Config
  winrm_timeout                     = "5m"
  winrm_use_ssl                     = true
  winrm_username                    = "packer"
  winrm_password                    = "SuperS3cr3t!"
  winrm_insecure                    = true
}

build {
  sources = ["source.azure-arm.windows-2016"]

  provisioner "powershell" {
    script = "scripts/configureRemotingForAnsible.ps1"
  }

  provisioner "ansible" {
    playbook_file = "ansible/playbook.yaml"
    user          = "packer"
    use_proxy     = false
    extra_arguments = [
      "-e",
      "ansible_winrm_server_cert_validation=ignore"
    ]

   # Uncomment this if running on MacOS
   # Known issue with MacOS https://www.packer.io/docs/provisioners/ansible/ansible#method-1-recommended
   ansible_env_vars = ["no_proxy=\"*\""]

  }
}
