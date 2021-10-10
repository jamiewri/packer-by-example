# GCP - Centos 8 - Ansible Local - SOE
This directory builds a generic Centos 8 image, that uses Ansible-local to instal some common cli tools on it. I use it for a bastion server.

## Required Env Vars
- `GOOGLE_APPLICATION_CREDENTIALS` - to point to the path of the service account key.
- `GCP_PROJECT` - the name of the google cloud project to save the final image into.

## Tested packer version
`Packer v1.6.6`

## Example build
```
packer build .
googlecompute.centos-8: output will be in this color.

==> googlecompute.centos-8: Checking image does not exist...
==> googlecompute.centos-8: Creating temporary rsa SSH key for instance...
==> googlecompute.centos-8: Using image: centos-8-v20201216
==> googlecompute.centos-8: Creating instance...
    googlecompute.centos-8: Loading zone: australia-southeast1-a
    googlecompute.centos-8: Loading machine type: n1-standard-1
    googlecompute.centos-8: Requesting instance creation...
    googlecompute.centos-8: Waiting for creation operation to complete...
    googlecompute.centos-8: Instance has been created!
==> googlecompute.centos-8: Waiting for the instance to become running...
    googlecompute.centos-8: IP: 34.151.112.17
==> googlecompute.centos-8: Using ssh communicator to connect: 34.151.112.17
==> googlecompute.centos-8: Waiting for SSH to become available...
==> googlecompute.centos-8: Connected to SSH!
==> googlecompute.centos-8: Provisioning with shell script: /var/folders/vs/173k56z92x5crlkqx6wrwzhh0000gp/T/packer-shell574142204
    googlecompute.centos-8: CentOS Linux 8 - AppStream                      3.4 MB/s | 9.3 MB     00:02
    googlecompute.centos-8: CentOS Linux 8 - BaseOS                         3.6 MB/s | 7.5 MB     00:02
    googlecompute.centos-8: CentOS Linux 8 - Extras                          15 kB/s |  10 kB     00:00
    googlecompute.centos-8: Google Compute Engine                           451  B/s | 844  B     00:01
    googlecompute.centos-8: Google Compute Engine                            25 kB/s | 3.4 kB     00:00
==> googlecompute.centos-8: Importing GPG key 0x307EA071:
==> googlecompute.centos-8:  Userid     : "Rapture Automatic Signing Key (cloud-rapture-signing-key-2021-03-01-08_01_09.pub)"
==> googlecompute.centos-8:  Fingerprint: 7F92 E05B 3109 3BEF 5A3C 2D38 FEEA 9169 307E A071
==> googlecompute.centos-8:  From       : https://packages.cloud.google.com/yum/doc/yum-key.gpg
==> googlecompute.centos-8: Importing GPG key 0x836F4BEB:
==> googlecompute.centos-8:  Userid     : "gLinux Rapture Automatic Signing Key (//depot/google3/production/borg/cloud-rapture/keys/cloud-rapture-pubkeys/cloud-rapture-signing-key-2020-12-03-16_08_05.pub) <glinux-team@google.com>"
==> googlecompute.centos-8:  Fingerprint: 59FE 0256 8272 69DC 8157 8F92 8B57 C5C2 836F 4BEB
==> googlecompute.centos-8:  From       : https://packages.cloud.google.com/yum/doc/yum-key.gpg
    googlecompute.centos-8: Google Compute Engine                           6.9 kB/s | 975  B     00:00
    googlecompute.centos-8: Google Compute Engine                           2.7 kB/s | 9.4 kB     00:03
    googlecompute.centos-8: Google Cloud SDK                                572  B/s | 844  B     00:01
    googlecompute.centos-8: Google Cloud SDK                                 25 kB/s | 3.4 kB     00:00
==> googlecompute.centos-8: Importing GPG key 0x307EA071:
==> googlecompute.centos-8:  Userid     : "Rapture Automatic Signing Key (cloud-rapture-signing-key-2021-03-01-08_01_09.pub)"
==> googlecompute.centos-8:  Fingerprint: 7F92 E05B 3109 3BEF 5A3C 2D38 FEEA 9169 307E A071
==> googlecompute.centos-8:  From       : https://packages.cloud.google.com/yum/doc/yum-key.gpg
==> googlecompute.centos-8: Importing GPG key 0x836F4BEB:
==> googlecompute.centos-8:  Userid     : "gLinux Rapture Automatic Signing Key (//depot/google3/production/borg/cloud-rapture/keys/cloud-rapture-pubkeys/cloud-rapture-signing-key-2020-12-03-16_08_05.pub) <glinux-team@google.com>"
==> googlecompute.centos-8:  Fingerprint: 59FE 0256 8272 69DC 8157 8F92 8B57 C5C2 836F 4BEB
==> googlecompute.centos-8:  From       : https://packages.cloud.google.com/yum/doc/yum-key.gpg
    googlecompute.centos-8: Google Cloud SDK                                6.9 kB/s | 975  B     00:00
    googlecompute.centos-8: Google Cloud SDK                                 12 MB/s |  39 MB     00:03
    googlecompute.centos-8: Dependencies resolved.
    googlecompute.centos-8: ================================================================================
    googlecompute.centos-8:  Package               Architecture    Version            Repository       Size
    googlecompute.centos-8: ================================================================================
    googlecompute.centos-8: Installing:
    googlecompute.centos-8:  epel-release          noarch          8-11.el8           extras           24 k
    googlecompute.centos-8:
    googlecompute.centos-8: Transaction Summary
    googlecompute.centos-8: ================================================================================
    googlecompute.centos-8: Install  1 Package
<..>
    googlecompute.centos-8:   python3-ply-3.9-9.el8.noarch          python3-pyasn1-0.3.7-6.el8.noarch
    googlecompute.centos-8:   python3-pycparser-2.14-14.el8.noarch  python3-pynacl-1.3.0-5.el8.x86_64
    googlecompute.centos-8:   python3-pytz-2017.2-9.el8.noarch      python3-pyyaml-3.12-12.el8.x86_64
    googlecompute.centos-8:   sshpass-1.06-9.el8.x86_64
    googlecompute.centos-8:
    googlecompute.centos-8: Complete!
==> googlecompute.centos-8: Provisioning with Ansible...
    googlecompute.centos-8: Creating Ansible staging directory...
    googlecompute.centos-8: Creating directory: /tmp/packer-provisioner-ansible-local/61623581-b507-8e28-873a-9887da482263
    googlecompute.centos-8: Uploading main Playbook file...
    googlecompute.centos-8: Uploading inventory file...
    googlecompute.centos-8: Executing Ansible: cd /tmp/packer-provisioner-ansible-local/61623581-b507-8e28-873a-9887da482263 && ANSIBLE_FORCE_COLOR=1 PYTHONUNBUFFERED=1 ansible-playbook /tmp/packer-provisioner-ansible-local/61623581-b507-8e28-873a-9887da482263/playbook.yaml --extra-vars "packer_build_name=centos-8 packer_builder_type=googlecompute packer_http_addr=ERR_HTTP_ADDR_NOT_IMPLEMENTED_BY_BUILDER -o IdentitiesOnly=yes"  -c local -i /tmp/packer-provisioner-ansible-local/61623581-b507-8e28-873a-9887da482263/packer-provisioner-ansible-local677895952
    googlecompute.centos-8:
    googlecompute.centos-8: PLAY [SOE Configuration playbook] **********************************************
    googlecompute.centos-8:
    googlecompute.centos-8: TASK [Gathering Facts] *********************************************************
    googlecompute.centos-8: ok: [127.0.0.1]
    googlecompute.centos-8:
<..>
    googlecompute.centos-8:
    googlecompute.centos-8: TASK [Confirm completion] ******************************************************
==> googlecompute.centos-8: [WARNING]: Consider using the file module with state=touch rather than running
==> googlecompute.centos-8: 'touch'.  If you need to use command because file is insufficient you can add
==> googlecompute.centos-8: 'warn: false' to this command task or set 'command_warnings=False' in
    googlecompute.centos-8: changed: [127.0.0.1]
    googlecompute.centos-8:
==> googlecompute.centos-8: ansible.cfg to get rid of this message.
    googlecompute.centos-8: PLAY RECAP *********************************************************************
    googlecompute.centos-8: 127.0.0.1                  : ok=9    changed=8    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
    googlecompute.centos-8:
==> googlecompute.centos-8: Deleting instance...
    googlecompute.centos-8: Instance has been deleted!
==> googlecompute.centos-8: Creating image...
==> googlecompute.centos-8: Deleting disk...
    googlecompute.centos-8: Disk has been deleted!
Build 'googlecompute.centos-8' finished after 13 minutes 58 seconds.

==> Wait completed after 13 minutes 58 seconds

==> Builds finished. The artifacts of successful builds are:
--> googlecompute.centos-8: A disk image was created: soe
```

