variable instance_size {
    type = string
    description = "ec2 web server size"
    default = "t3.small"
}
 
variable instance_root_device_size {
    type = number
    description = "Root bock device size in GB"
    default = 12
}
