# Offical CentOS Linux Stream 8 in ap-southeast-2 - https://wiki.centos.org/Cloud/AWS
source_ami = "ami-08bc1dda17f2f8309"

# Name to save the output AMI
ami_name = "soe"

# Building with < 2 vcpus takes a long time
instance_type = "t2.medium"

