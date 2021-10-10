source "googlecompute" "centos-8" {
  image_name = "soe"
  project_id   = var.project
  source_image = "centos-8-v20201216"
  ssh_username = "packer"
  zone         = "australia-southeast1-a"
}

build {
  sources = ["source.googlecompute.centos-8"]

  provisioner "shell" {
    inline = ["sleep 30", "sudo yum install epel-release -y", "sudo yum install ansible -y"]
  }

  provisioner "ansible-local" {
    playbook_file = "ansible/playbook.yaml"
  }
}
