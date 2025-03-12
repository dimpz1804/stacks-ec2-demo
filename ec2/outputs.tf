output "app_eip" {
  value = aws_eip.ec2_eip.public_ip
}
 
output "app_instance" {
    value = aws_instance.stacks_demo.id
}
