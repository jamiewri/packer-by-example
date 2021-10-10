# Azure - Centos 8 - Ansible Remote - Apache Web Server

## Required Env Vars
- `ARM_TENANT_ID`
- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `MANAGED_IMAGE_RESOURCE_GROUP_NAME` -  a name of a resource group that already exists to save the finished image into.

## Tested packer version
`Packer v1.6.6`

## Example build
```
packer build .
azure-arm.web-server: output will be in this color.

==> azure-arm.web-server: Running builder ...
==> azure-arm.web-server: Getting tokens using client secret
==> azure-arm.web-server: Getting tokens using client secret
    azure-arm.web-server: Creating Azure Resource Manager (ARM) client ...
==> azure-arm.web-server: WARNING: Zone resiliency may not be supported in australiasoutheast, checkout the docs at https://docs.microsoft.com/en-us/azure/availability-zones/
==> azure-arm.web-server: Creating resource group ...
==> azure-arm.web-server:  -> ResourceGroupName : 'pkr-Resource-Group-7rmoadsa5x'
==> azure-arm.web-server:  -> Location          : 'australiasoutheast'
==> azure-arm.web-server:  -> Tags              :
<..>
==> azure-arm.web-server:
==> azure-arm.web-server: Getting the VM's IP address ...
==> azure-arm.web-server:  -> ResourceGroupName   : 'pkr-Resource-Group-7rmoadsa5x'
==> azure-arm.web-server:  -> PublicIPAddressName : 'pkrip7rmoadsa5x'
==> azure-arm.web-server:  -> NicName             : 'pkrni7rmoadsa5x'
==> azure-arm.web-server:  -> Network Connection  : 'PublicEndpoint'
==> azure-arm.web-server:  -> IP Address          : '52.255.62.112'
==> azure-arm.web-server: Waiting for SSH to become available...
==> azure-arm.web-server: Connected to SSH!
==> azure-arm.web-server: Pausing 30s before the next provisioner...
==> azure-arm.web-server: Provisioning with shell script: /var/folders/vs/173k56z92x5crlkqx6wrwzhh0000gp/T/packer-shell146188199
    azure-arm.web-server: CentOS-8 - AppStream (OpenLogic)                 19 MB/s | 8.6 MB     00:00
    azure-arm.web-server: CentOS-8 - Base (OpenLogic)                      34 MB/s | 7.8 MB     00:00
    azure-arm.web-server: CentOS-8 - Extras (OpenLogic)                   500 kB/s |  12 kB     00:00
    azure-arm.web-server: CentOS Linux 8 - AppStream                      2.6 MB/s | 9.3 MB     00:03
    azure-arm.web-server: CentOS Linux 8 - BaseOS                         4.3 MB/s | 7.5 MB     00:01
    azure-arm.web-server: CentOS Linux 8 - Extras                          18 kB/s |  10 kB     00:00
    azure-arm.web-server: CentOS-8 - OpenLogic packages for x86_64         41 kB/s | 7.4 kB     00:00
    azure-arm.web-server: Dependencies resolved.
    azure-arm.web-server: ================================================================================
    azure-arm.web-server:  Package            Architecture Version           Repository              Size
    azure-arm.web-server: ================================================================================
    azure-arm.web-server: Installing:
    azure-arm.web-server:  epel-release       noarch       8-11.el8          extras-openlogic        24 k
    azure-arm.web-server:
    azure-arm.web-server: Transaction Summary
    azure-arm.web-server: ================================================================================
<..>
    azure-arm.web-server: Installed:
    azure-arm.web-server:   ansible-2.9.25-1.el8.noarch            libsodium-1.0.18-2.el8.x86_64
    azure-arm.web-server:   python3-bcrypt-3.1.6-2.el8.1.x86_64    python3-jmespath-0.9.0-11.el8.noarch
    azure-arm.web-server:   python3-paramiko-2.4.3-1.el8.noarch    python3-pynacl-1.3.0-5.el8.x86_64
    azure-arm.web-server:   sshpass-1.06-9.el8.x86_64
    azure-arm.web-server:
    azure-arm.web-server: Complete!
==> azure-arm.web-server: Provisioning with Ansible...
    azure-arm.web-server: Creating Ansible staging directory...
    azure-arm.web-server: Creating directory: /tmp/packer-provisioner-ansible-local/616253e8-1788-4ce3-923d-105be9e0a006
    azure-arm.web-server: Uploading main Playbook file...
    azure-arm.web-server: Uploading inventory file...
    azure-arm.web-server: Executing Ansible: cd /tmp/packer-provisioner-ansible-local/616253e8-1788-4ce3-923d-105be9e0a006 && ANSIBLE_FORCE_COLOR=1 PYTHONUNBUFFERED=1 ansible-playbook /tmp/packer-provisioner-ansible-local/616253e8-1788-4ce3-923d-105be9e0a006/playbook.yaml --extra-vars "packer_build_name=web-server packer_builder_type=azure-arm packer_http_addr=ERR_HTTP_ADDR_NOT_IMPLEMENTED_BY_BUILDER -o IdentitiesOnly=yes"  -c local -i /tmp/packer-provisioner-ansible-local/616253e8-1788-4ce3-923d-105be9e0a006/packer-provisioner-ansible-local187018651
    azure-arm.web-server:
    azure-arm.web-server: PLAY [Configure Webserver] *****************************************************
    azure-arm.web-server:
    azure-arm.web-server: TASK [Install packages] ********************************************************
    azure-arm.web-server: changed: [127.0.0.1]
    azure-arm.web-server:
    azure-arm.web-server: TASK [Start and enable httpd] **************************************************
    azure-arm.web-server: changed: [127.0.0.1]
    azure-arm.web-server:
    azure-arm.web-server: PLAY RECAP *********************************************************************
    azure-arm.web-server: 127.0.0.1                  : ok=2    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
    azure-arm.web-server:
==> azure-arm.web-server: Provisioning with shell script: /var/folders/vs/173k56z92x5crlkqx6wrwzhh0000gp/T/packer-shell611986775
    azure-arm.web-server: WARNING! The waagent service will be stopped.
    azure-arm.web-server: WARNING! All SSH host key pairs will be deleted.
    azure-arm.web-server: WARNING! Cached DHCP leases will be deleted.
    azure-arm.web-server: WARNING! root password will be disabled. You will not be able to login as root.
    azure-arm.web-server: WARNING! /etc/resolv.conf will be deleted.
    azure-arm.web-server: WARNING! packer account and entire home directory will be deleted.
    azure-arm.web-server: 2021-10-10T02:46:23.516435Z INFO Examine /proc/net/route for primary interface
    azure-arm.web-server: 2021-10-10T02:46:23.517499Z INFO Primary interface is [eth0]
==> azure-arm.web-server: Querying the machine's properties ...
==> azure-arm.web-server:  -> ResourceGroupName : 'pkr-Resource-Group-7rmoadsa5x'
==> azure-arm.web-server:  -> ComputeName       : 'pkrvm7rmoadsa5x'
==> azure-arm.web-server:  -> Managed OS Disk   : '/subscriptions/<sensitive>/resourceGroups/pkr-Resource-Group-7rmoadsa5x/providers/Microsoft.Compute/disks/pkros7rmoadsa5x'
==> azure-arm.web-server: Querying the machine's additional disks properties ...
==> azure-arm.web-server:  -> ResourceGroupName : 'pkr-Resource-Group-7rmoadsa5x'
==> azure-arm.web-server:  -> ComputeName       : 'pkrvm7rmoadsa5x'
==> azure-arm.web-server: Powering off machine ...
==> azure-arm.web-server:  -> ResourceGroupName : 'pkr-Resource-Group-7rmoadsa5x'
==> azure-arm.web-server:  -> ComputeName       : 'pkrvm7rmoadsa5x'
<..>
==> azure-arm.web-server: Removing the created Deployment object: 'pkrdp7rmoadsa5x'
==> azure-arm.web-server:
==> azure-arm.web-server: Cleanup requested, deleting resource group ...
==> azure-arm.web-server: Resource group has been deleted.
Build 'azure-arm.web-server' finished after 7 minutes 4 seconds.

==> Wait completed after 7 minutes 4 seconds

==> Builds finished. The artifacts of successful builds are:
--> azure-arm.web-server: Azure.ResourceManagement.VMImage:

OSType: Linux
ManagedImageResourceGroupName: jamie-packer-images
ManagedImageName: centos-8-web-server
ManagedImageId: /subscriptions/<sensitive>/resourceGroups/jamie-packer-images/providers/Microsoft.Compute/images/centos-8-web-server
ManagedImageLocation: australiasoutheast
```
