# Packer By Example
This repository documents working examples of packer building VM images for various applications.

The stucture of the examples are;
```
./<cloud provider>/<operating system>/<main provisioner>/<application>
```

For example, NGINX running on Centos 7, installed via ansible-local, for Google Cloud would be found at;
```
./gcp/centos-7/ansible-remote/nginx
```

## Popular Examples
- [azure/windows-server-2016/ansible-remote/soe](./azure/windows-server-2016/ansible-remote/soe)
- [gcp/centos-8/ansible-local/soe](./gcp/centos-8/ansible-local/soe)

## Github Actions
- Runs `packer validate -syntax-only`

## Acceptance criteria
- Configuration must be abstracted into env vars.
- Running `packer build .` in a packer working directory should complete sucessfully.
- Packer file must be named `packer.pkr.hcl`
- Variables file must be named `variables.pkr.hcl`
- Packer files must be in HCL format.
- All directories and file names should be lower case.
- Credentials must be passed as well known env vars, nothing statically configured.

## Other notes
- The acceptance tests whitelists the name of the cloud providers, operating systems and provisioners.

## File extensions
| Extension  | Description |
| ------------- | ------------- |
| `.pkr.hcl`  | Packer file in HCL |
| `.sh`  | Shell script  |
| `.ps1`  | Windows Powershell  |
| `.yaml` | Any yaml file (not `.yml`) |

## Well known directories and file names
| Directory | Description |
| --------- | ----------- |
| `README.md` | Readme for this packer build directory only. | 
| `packer.pkr.hcl` | Packer build file |
| `variables.pkr.hcl` | All configuration should be set with environement variables as the default value. e.g. `env("foo")` |
| `./ansible` | Working directory for Ansible, including roles, dependancies etc. |
| `./scripts` | Contains any scripts needed for build, e.g. Cloud-init, shell, bash, powershell |
