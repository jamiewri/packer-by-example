# Azure - Windows Server 2016 - Ansible Remote - SOE

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
azure-arm.windows-2016: output will be in this color.

==> azure-arm.windows-2016: Running builder ...
==> azure-arm.windows-2016: Getting tokens using client secret
==> azure-arm.windows-2016: Getting tokens using client secret
    azure-arm.windows-2016: Creating Azure Resource Manager (ARM) client ...
==> azure-arm.windows-2016: WARNING: Zone resiliency may not be supported in australiasoutheast, checkout the docs at https://docs.microsoft.com/en-us/azure/availability-zones/
==> azure-arm.windows-2016: Creating resource group ...
==> azure-arm.windows-2016:  -> ResourceGroupName : 'pkr-Resource-Group-axm0vnqrsz'
<..>
==> azure-arm.windows-2016: Getting the VM's IP address ...
==> azure-arm.windows-2016:  -> ResourceGroupName   : 'pkr-Resource-Group-axm0vnqrsz'
==> azure-arm.windows-2016:  -> PublicIPAddressName : 'pkripaxm0vnqrsz'
==> azure-arm.windows-2016:  -> NicName             : 'pkrniaxm0vnqrsz'
==> azure-arm.windows-2016:  -> Network Connection  : 'PublicEndpoint'
==> azure-arm.windows-2016:  -> IP Address          : '191.239.182.27'
==> azure-arm.windows-2016: Waiting for WinRM to become available...
==> azure-arm.windows-2016: #< CLIXML
    azure-arm.windows-2016: WinRM connected.
==> azure-arm.windows-2016: <Objs Version="1.1.0.1" xmlns="http://schemas.microsoft.com/powershell/2004/04"><Obj S="progress" RefId="0"><TN RefId="0"><T>System.Management.Automation.PSCustomObject</T><T>System.Object</T></TN><MS><I64 N="SourceId">1</I64><PR N="Record"><AV>Preparing modules for first use.</AV><AI>0</AI><Nil /><PI>-1</PI><PC>-1</PC><T>Completed</T><SR>-1</SR><SD> </SD></PR></MS></Obj><Obj S="progress" RefId="1"><TNRef RefId="0" /><MS><I64 N="SourceId">1</I64><PR N="Record"><AV>Preparing modules for first use.</AV><AI>0</AI><Nil /><PI>-1</PI><PC>-1</PC><T>Completed</T><SR>-1</SR><SD> </SD></PR></MS></Obj></Objs>
==> azure-arm.windows-2016: Connected to WinRM!
==> azure-arm.windows-2016: Provisioning with Powershell...
==> azure-arm.windows-2016: Provisioning with powershell script: scripts/configureRemotingForAnsible.ps1
    azure-arm.windows-2016: Ok.
    azure-arm.windows-2016:
==> azure-arm.windows-2016: Provisioning with Ansible...
    azure-arm.windows-2016: Not using Proxy adapter for Ansible run:
    azure-arm.windows-2016:     Using WinRM Password from Packer communicator...
==> azure-arm.windows-2016: Executing Ansible: ansible-playbook -e packer_build_name="windows-2016" -e packer_builder_type=azure-arm -e ansible_winrm_server_cert_validation=ignore -e ansible_password=***** -i /var/folders/vs/173k56z92x5crlkqx6wrwzhh0000gp/T/packer-provisioner-ansible882362574 /Users/jamie/repos/packer-by-example/azure/windows-server-2016/ansible-remote/soe/ansible/playbook.yaml
    azure-arm.windows-2016:
    azure-arm.windows-2016: PLAY [Run hello world to test Ansible] *****************************************
    azure-arm.windows-2016:
    azure-arm.windows-2016: TASK [Ping windows machine] ****************************************************
    azure-arm.windows-2016: changed: [default]
    azure-arm.windows-2016:
    azure-arm.windows-2016: PLAY RECAP *********************************************************************
    azure-arm.windows-2016: default                    : ok=1    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
Querying the machine's properties ...
==> azure-arm.windows-2016:  -> ResourceGroupName : 'pkr-Resource-Group-axm0vnqrsz'
==> azure-arm.windows-2016:  -> ComputeName       : 'pkrvmaxm0vnqrsz'
==> azure-arm.windows-2016:  -> Managed OS Disk   : '/subscriptions/<sensitive>/resourceGroups/pkr-Resource-Group-axm0vnqrsz/providers/Microsoft.Compute/disks/pkrosaxm0vnqrsz'
==> azure-arm.windows-2016: Querying the machine's additional disks properties ...
==> azure-arm.windows-2016:  -> ResourceGroupName : 'pkr-Resource-Group-axm0vnqrsz'
==> azure-arm.windows-2016:  -> ComputeName       : 'pkrvmaxm0vnqrsz'
==> azure-arm.windows-2016: Powering off machine ...
==> azure-arm.windows-2016:  -> ResourceGroupName : 'pkr-Resource-Group-axm0vnqrsz'
==> azure-arm.windows-2016:  -> ComputeName       : 'pkrvmaxm0vnqrsz'
==> azure-arm.windows-2016: Capturing image ...
==> azure-arm.windows-2016:  -> Compute ResourceGroupName : 'pkr-Resource-Group-axm0vnqrsz'
==> azure-arm.windows-2016:  -> Compute Name              : 'pkrvmaxm0vnqrsz'
==> azure-arm.windows-2016:  -> Compute Location          : 'australiasoutheast'
==> azure-arm.windows-2016:  -> Image ResourceGroupName   : 'jamie-packer-images'
==> azure-arm.windows-2016:  -> Image Name                : 'windows-server-2016'
==> azure-arm.windows-2016:  -> Image Location            : 'australiasoutheast'
==> azure-arm.windows-2016: Removing the created Deployment object: 'pkrdpaxm0vnqrsz'
==> azure-arm.windows-2016: Removing the created Deployment object: 'kvpkrdpaxm0vnqrsz'
==> azure-arm.windows-2016:
==> azure-arm.windows-2016: Cleanup requested, deleting resource group ...
==> azure-arm.windows-2016: Resource group has been deleted.
Build 'azure-arm.windows-2016' finished after 9 minutes 30 seconds.

==> Wait completed after 9 minutes 30 seconds

==> Builds finished. The artifacts of successful builds are:
--> azure-arm.windows-2016: Azure.ResourceManagement.VMImage:

OSType: Windows
ManagedImageResourceGroupName: REDACTED
ManagedImageName: windows-server-2016
ManagedImageId: REDACTED
ManagedImageLocation: australiasoutheast
```
