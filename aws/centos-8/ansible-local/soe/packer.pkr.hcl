packer {
  required_plugins {
    amazon = {
      version = "1.1.5"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "virtual-machine" {

  # Source and Destination AMIs
  source_ami = var.source_ami
  ami_name   = var.ami_name

  # Type of VM to use when building the image
  instance_type = var.instance_type

  # When packer is being executed on a personal laptop, external IP to reach ec2 instance is required
  associate_public_ip_address = true

  # Default user name for CentOS 8
  ssh_username = var.ssh_username

  # Specifying predefined AWS keypair and local corresponding private key file so we can access the VM for troubleshooting.
  # Useful when used with `packer build packer.pkr.hcl -on-error=abort`
  # Comment out `ssh_keypair_name` and `ssh_private_key_file` for packer to generate its own temp key
  ssh_keypair_name     = "test"
  ssh_private_key_file = "~/.ssh/test.pem"

  tags = {
    builtBy = "packer"
  }
}

build {
  name = "packer"
  sources = [
    "source.amazon-ebs.virtual-machine"
  ]

  # Update repo repos and install Ansible
  provisioner "shell" {
    pause_before = "30s"
    inline = [
      "sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*",
      "sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*",
      "sudo yum install python36 -y",
      "python3 -m pip install --user ansible",
    ]
  }

  # Copy Ansible playbook to remote host.
  provisioner "file" {
    source      = "./ansible"
    destination = "/home/centos"
  }

  # Run Ansible locally.
  provisioner "ansible-local" {
    playbook_file = "./ansible/configure.yaml"
  }

  # Remove Ansible playbook from remote host.
  provisioner "shell" {
    inline = [
      "sudo rm -rf /home/centos/ansible",
    ]
  }
}
