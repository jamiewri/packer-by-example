variable "ssh_user" {
  type    = string
  default = "packer"
}

source "googlecompute" "vault" {
  image_name   = "vault-enterprise-soe-1-8-2"
  project_id   = "devopstower"
  source_image = "centos-8-v20201216"
  ssh_username = "packer"
  zone         = "australia-southeast1-a"
}
build {
  sources = ["source.googlecompute.vault"]

  provisioner "shell" {
    inline = ["sleep 30", "sudo yum install epel-release -y", "sudo yum install ansible -y"]
  }
  provisioner "file" {
    destination = "/home/packer"
    source      = "./ansible"
  }
  provisioner "shell" {
    inline = ["ansible-playbook -c local ./ansible/configure.yaml"]
  }
}
