# AWS - CentOS 8 - Ansible Remote - SOE

## Required Env Args
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_DEFAULT_REGION`

## Tested Packer version
`Packer v1.8.4`

## Example build 
```
packer build .
packer.amazon-ebs.virtual-machine: output will be in this color.

==> packer.amazon-ebs.virtual-machine: Prevalidating any provided VPC information
==> packer.amazon-ebs.virtual-machine: Prevalidating AMI Name: soe
    packer.amazon-ebs.virtual-machine: Found Image ID: ami-08bc1dda17f2f8309
==> packer.amazon-ebs.virtual-machine: Using existing SSH private key
==> packer.amazon-ebs.virtual-machine: Creating temporary security group for this instance: packer_637150f5-d17b-a821-57a2-496a962615eb
==> packer.amazon-ebs.virtual-machine: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> packer.amazon-ebs.virtual-machine: Launching a source AWS instance...
    packer.amazon-ebs.virtual-machine: Instance ID: i-006e82905e5733de0
==> packer.amazon-ebs.virtual-machine: Waiting for instance (i-006e82905e5733de0) to become ready...
==> packer.amazon-ebs.virtual-machine: Using SSH communicator to connect: 13.236.201.68
==> packer.amazon-ebs.virtual-machine: Waiting for SSH to become available...
==> packer.amazon-ebs.virtual-machine: Connected to SSH!
==> packer.amazon-ebs.virtual-machine: Pausing 30s before the next provisioner...
==> packer.amazon-ebs.virtual-machine: Provisioning with shell script: /var/folders/vs/173k56z92x5crlkqx6wrwzhh0000gp/T/packer-shell2476632763
    packer.amazon-ebs.virtual-machine: CentOS Linux 8 - AppStream                      6.8 MB/s | 8.4 MB     00:01
    packer.amazon-ebs.virtual-machine: CentOS Linux 8 - BaseOS                         5.6 MB/s | 4.6 MB     00:00
    packer.amazon-ebs.virtual-machine: CentOS Linux 8 - Extras                         208 kB/s |  10 kB     00:00
    packer.amazon-ebs.virtual-machine: Dependencies resolved.
    packer.amazon-ebs.virtual-machine: ================================================================================
    packer.amazon-ebs.virtual-machine:  Package            Arch   Version                              Repo       Size
    packer.amazon-ebs.virtual-machine: ================================================================================
    packer.amazon-ebs.virtual-machine: Installing:
    packer.amazon-ebs.virtual-machine:  python36           x86_64 3.6.8-38.module_el8.5.0+895+a459eca8 appstream  19 k
    packer.amazon-ebs.virtual-machine: Upgrading:
    packer.amazon-ebs.virtual-machine:  chkconfig          x86_64 1.19.1-1.el8                         baseos    198 k
    packer.amazon-ebs.virtual-machine:  platform-python-pip
    packer.amazon-ebs.virtual-machine:                     noarch 9.0.3-20.el8                         baseos    1.7 M
    packer.amazon-ebs.virtual-machine: Installing dependencies:
    packer.amazon-ebs.virtual-machine:  python3-pip        noarch 9.0.3-20.el8                         appstream  20 k
    packer.amazon-ebs.virtual-machine:  python3-setuptools noarch 39.2.0-6.el8                         baseos    163 k
    packer.amazon-ebs.virtual-machine: Enabling module streams:
    packer.amazon-ebs.virtual-machine:  python36                  3.6
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: Transaction Summary
    packer.amazon-ebs.virtual-machine: ================================================================================
    packer.amazon-ebs.virtual-machine: Install  3 Packages
    packer.amazon-ebs.virtual-machine: Upgrade  2 Packages
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: Total download size: 2.1 M
    packer.amazon-ebs.virtual-machine: Downloading Packages:
    packer.amazon-ebs.virtual-machine: (1/5): python3-pip-9.0.3-20.el8.noarch.rpm      592 kB/s |  20 kB     00:00
    packer.amazon-ebs.virtual-machine: (2/5): python36-3.6.8-38.module_el8.5.0+895+a45 423 kB/s |  19 kB     00:00
    packer.amazon-ebs.virtual-machine: (3/5): python3-setuptools-39.2.0-6.el8.noarch.r 1.5 MB/s | 163 kB     00:00
    packer.amazon-ebs.virtual-machine: (4/5): chkconfig-1.19.1-1.el8.x86_64.rpm        109 kB/s | 198 kB     00:01
    packer.amazon-ebs.virtual-machine: (5/5): platform-python-pip-9.0.3-20.el8.noarch. 857 kB/s | 1.7 MB     00:02
    packer.amazon-ebs.virtual-machine: --------------------------------------------------------------------------------
    packer.amazon-ebs.virtual-machine: Total                                           1.0 MB/s | 2.1 MB     00:02
==> packer.amazon-ebs.virtual-machine: warning: /var/cache/dnf/appstream-d7987f026ef99c82/packages/python3-pip-9.0.3-20.el8.noarch.rpm: Header V3 RSA/SHA256 Signature, key ID 8483c65d: NOKEY
    packer.amazon-ebs.virtual-machine: CentOS Linux 8 - AppStream                      1.6 MB/s | 1.6 kB     00:00
==> packer.amazon-ebs.virtual-machine: Importing GPG key 0x8483C65D:
==> packer.amazon-ebs.virtual-machine:  Userid     : "CentOS (CentOS Official Signing Key) <security@centos.org>"
==> packer.amazon-ebs.virtual-machine:  Fingerprint: 99DB 70FA E1D7 CE22 7FB6 4882 05B5 55B3 8483 C65D
==> packer.amazon-ebs.virtual-machine:  From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
    packer.amazon-ebs.virtual-machine: Key imported successfully
    packer.amazon-ebs.virtual-machine: Running transaction check
    packer.amazon-ebs.virtual-machine: Transaction check succeeded.
    packer.amazon-ebs.virtual-machine: Running transaction test
    packer.amazon-ebs.virtual-machine: Transaction test succeeded.
    packer.amazon-ebs.virtual-machine: Running transaction
    packer.amazon-ebs.virtual-machine:   Preparing        :                                                        1/1
    packer.amazon-ebs.virtual-machine:   Upgrading        : platform-python-pip-9.0.3-20.el8.noarch                1/7
    packer.amazon-ebs.virtual-machine:   Upgrading        : chkconfig-1.19.1-1.el8.x86_64                          2/7
    packer.amazon-ebs.virtual-machine:   Installing       : python3-setuptools-39.2.0-6.el8.noarch                 3/7
    packer.amazon-ebs.virtual-machine:   Installing       : python36-3.6.8-38.module_el8.5.0+895+a459eca8.x86_64   4/7
    packer.amazon-ebs.virtual-machine:   Running scriptlet: python36-3.6.8-38.module_el8.5.0+895+a459eca8.x86_64   4/7
    packer.amazon-ebs.virtual-machine:   Installing       : python3-pip-9.0.3-20.el8.noarch                        5/7
    packer.amazon-ebs.virtual-machine:   Cleanup          : platform-python-pip-9.0.3-19.el8.noarch                6/7
    packer.amazon-ebs.virtual-machine:   Cleanup          : chkconfig-1.13-2.el8.x86_64                            7/7
    packer.amazon-ebs.virtual-machine:   Running scriptlet: chkconfig-1.13-2.el8.x86_64                            7/7
    packer.amazon-ebs.virtual-machine:   Verifying        : python3-pip-9.0.3-20.el8.noarch                        1/7
    packer.amazon-ebs.virtual-machine:   Verifying        : python36-3.6.8-38.module_el8.5.0+895+a459eca8.x86_64   2/7
    packer.amazon-ebs.virtual-machine:   Verifying        : python3-setuptools-39.2.0-6.el8.noarch                 3/7
    packer.amazon-ebs.virtual-machine:   Verifying        : chkconfig-1.19.1-1.el8.x86_64                          4/7
    packer.amazon-ebs.virtual-machine:   Verifying        : chkconfig-1.13-2.el8.x86_64                            5/7
    packer.amazon-ebs.virtual-machine:   Verifying        : platform-python-pip-9.0.3-20.el8.noarch                6/7
    packer.amazon-ebs.virtual-machine:   Verifying        : platform-python-pip-9.0.3-19.el8.noarch                7/7
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: Upgraded:
    packer.amazon-ebs.virtual-machine:   chkconfig-1.19.1-1.el8.x86_64     platform-python-pip-9.0.3-20.el8.noarch
    packer.amazon-ebs.virtual-machine: Installed:
    packer.amazon-ebs.virtual-machine:   python3-pip-9.0.3-20.el8.noarch
    packer.amazon-ebs.virtual-machine:   python3-setuptools-39.2.0-6.el8.noarch
    packer.amazon-ebs.virtual-machine:   python36-3.6.8-38.module_el8.5.0+895+a459eca8.x86_64
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: Complete!
    packer.amazon-ebs.virtual-machine: Collecting ansible
    packer.amazon-ebs.virtual-machine:   Downloading https://files.pythonhosted.org/packages/fd/f8/071905c6a67592d0852a9f340f6ab9226861eeeb97fdf4068642b22edcf3/ansible-4.10.0.tar.gz (36.8MB)
    packer.amazon-ebs.virtual-machine: Collecting ansible-core~=2.11.7 (from ansible)
    packer.amazon-ebs.virtual-machine:   Downloading https://files.pythonhosted.org/packages/98/ea/2935bf0864196cd2c9d14548e399a110f48b3540664ddc462b39ff0b822d/ansible-core-2.11.12.tar.gz (7.1MB)
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: jinja2 in /usr/lib/python3.6/site-packages (from ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: PyYAML in /usr/lib64/python3.6/site-packages (from ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: cryptography in /usr/lib64/python3.6/site-packages (from ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Collecting packaging (from ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine:   Downloading https://files.pythonhosted.org/packages/05/8e/8de486cbd03baba4deef4142bd643a3e7bbe954a784dc1bb17142572d127/packaging-21.3-py3-none-any.whl (40kB)
    packer.amazon-ebs.virtual-machine: Collecting resolvelib<0.6.0,>=0.5.3 (from ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine:   Downloading https://files.pythonhosted.org/packages/6b/f5/1b4375dbe7e3dddf074d206054ab3e27de0fdb2d32e64a1d5da25f813927/resolvelib-0.5.5-py2.py3-none-any.whl
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: MarkupSafe>=0.23 in /usr/lib64/python3.6/site-packages (from jinja2->ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: six>=1.4.1 in /usr/lib/python3.6/site-packages (from cryptography->ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: cffi!=1.11.3,>=1.8 in /usr/lib64/python3.6/site-packages (from cryptography->ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Collecting pyparsing!=3.0.5,>=2.0.2 (from packaging->ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine:   Downloading https://files.pythonhosted.org/packages/6c/10/a7d0fa5baea8fe7b50f448ab742f26f52b80bfca85ac2be9d35cdd9a3246/pyparsing-3.0.9-py3-none-any.whl (98kB)
    packer.amazon-ebs.virtual-machine: Requirement already satisfied: pycparser in /usr/lib/python3.6/site-packages (from cffi!=1.11.3,>=1.8->cryptography->ansible-core~=2.11.7->ansible)
    packer.amazon-ebs.virtual-machine: Installing collected packages: pyparsing, packaging, resolvelib, ansible-core, ansible
    packer.amazon-ebs.virtual-machine:   Running setup.py install for ansible-core: started
    packer.amazon-ebs.virtual-machine:     Running setup.py install for ansible-core: finished with status 'done'
    packer.amazon-ebs.virtual-machine:   Running setup.py install for ansible: started
    packer.amazon-ebs.virtual-machine:     Running setup.py install for ansible: finished with status 'done'
    packer.amazon-ebs.virtual-machine: Successfully installed ansible-4.10.0 ansible-core-2.11.12 packaging-21.3 pyparsing-3.0.9 resolvelib-0.5.5
==> packer.amazon-ebs.virtual-machine: Uploading ./ansible => /home/centos
==> packer.amazon-ebs.virtual-machine: Provisioning with Ansible...
    packer.amazon-ebs.virtual-machine: Creating Ansible staging directory...
    packer.amazon-ebs.virtual-machine: Creating directory: /tmp/packer-provisioner-ansible-local/63715283-4aaf-4854-65f4-ee2a71dce3a9
    packer.amazon-ebs.virtual-machine: Uploading main Playbook file...
    packer.amazon-ebs.virtual-machine: Uploading inventory file...
    packer.amazon-ebs.virtual-machine: Executing Ansible: cd /tmp/packer-provisioner-ansible-local/63715283-4aaf-4854-65f4-ee2a71dce3a9 &&  ANSIBLE_FORCE_COLOR=1 PYTHONUNBUFFERED=1 ansible-playbook /tmp/packer-provisioner-ansible-local/63715283-4aaf-4854-65f4-ee2a71dce3a9/configure.yaml --extra-vars "packer_build_name=virtual-machine packer_builder_type=amazon-ebs packer_http_addr=ERR_HTTP_ADDR_NOT_IMPLEMENTED_BY_BUILDER -o IdentitiesOnly=yes"  -c local -i /tmp/packer-provisioner-ansible-local/63715283-4aaf-4854-65f4-ee2a71dce3a9/packer-provisioner-ansible-local1858122594
==> packer.amazon-ebs.virtual-machine: [DEPRECATION WARNING]: Ansible will require Python 3.8 or newer on the
==> packer.amazon-ebs.virtual-machine: controller starting with Ansible 2.12. Current version: 3.6.8 (default, Mar 19
==> packer.amazon-ebs.virtual-machine: 2021, 05:13:41) [GCC 8.4.1 20200928 (Red Hat 8.4.1-1)]. This feature will be
==> packer.amazon-ebs.virtual-machine: removed from ansible-core in version 2.12. Deprecation warnings can be disabled
==> packer.amazon-ebs.virtual-machine:  by setting deprecation_warnings=False in ansible.cfg.
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: PLAY [SOE Configuration playbook] **********************************************
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: TASK [Gathering Facts] *********************************************************
    packer.amazon-ebs.virtual-machine: ok: [127.0.0.1]
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: TASK [Confirm completion] ******************************************************
    packer.amazon-ebs.virtual-machine: changed: [127.0.0.1]
    packer.amazon-ebs.virtual-machine:
    packer.amazon-ebs.virtual-machine: PLAY RECAP *********************************************************************
    packer.amazon-ebs.virtual-machine: 127.0.0.1                  : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
    packer.amazon-ebs.virtual-machine:
==> packer.amazon-ebs.virtual-machine: Provisioning with shell script: /var/folders/vs/173k56z92x5crlkqx6wrwzhh0000gp/T/packer-shell3022239314
==> packer.amazon-ebs.virtual-machine: Stopping the source instance...
    packer.amazon-ebs.virtual-machine: Stopping instance
==> packer.amazon-ebs.virtual-machine: Waiting for the instance to stop...
==> packer.amazon-ebs.virtual-machine: Creating AMI soe from instance i-006e82905e5733de0
    packer.amazon-ebs.virtual-machine: AMI: ami-0f58e32c57471b4cc
==> packer.amazon-ebs.virtual-machine: Waiting for AMI to become ready...
==> packer.amazon-ebs.virtual-machine: Skipping Enable AMI deprecation...
==> packer.amazon-ebs.virtual-machine: Adding tags to AMI (ami-0f58e32c57471b4cc)...
==> packer.amazon-ebs.virtual-machine: Tagging snapshot: snap-05fea77872ba3ad7b
==> packer.amazon-ebs.virtual-machine: Creating AMI tags
    packer.amazon-ebs.virtual-machine: Adding tag: "builtBy": "packer"
==> packer.amazon-ebs.virtual-machine: Creating snapshot tags
==> packer.amazon-ebs.virtual-machine: Terminating the source AWS instance...
==> packer.amazon-ebs.virtual-machine: Cleaning up any extra volumes...
==> packer.amazon-ebs.virtual-machine: No volumes to clean up, skipping
==> packer.amazon-ebs.virtual-machine: Deleting temporary security group...
Build 'packer.amazon-ebs.virtual-machine' finished after 11 minutes 18 seconds.

==> Wait completed after 11 minutes 18 seconds

==> Builds finished. The artifacts of successful builds are:
--> packer.amazon-ebs.virtual-machine: AMIs were created:
ap-southeast-2: ami-0f58e32c57471b4cc
```
