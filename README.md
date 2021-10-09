# Packer By Example
This repository documents working examples of packer building vm images for various applications.

The stucture of the examples are;
```
./<cloud provider>/<operating system>/<main provisioner>/<application>
```

For example, NGINX running on Centos 7, installed via ansible-local, for Google Cloud would be found at;
```
./gcp/centos-7/ansible-remote/nginx
```

## Github Actions
- Runs `packer validate -syntax-only`

## Acceptance criteria
- Packer file must be named `packer.pkr.hcl`
- Packer file must be in HCL format.
- Single packer file per example directory.
- All directories and file names should be lower case.
- Credentials must be passed as well known env vars, nothing statically configured.

## Other notes
- The acceptance tests whitelists the name of the cloud providers, operating systems and provisioners.
