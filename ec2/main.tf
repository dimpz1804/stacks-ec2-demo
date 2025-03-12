data "aws_ami" "ubuntu" {
    most_recent = true
 
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
 
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
 
    filter {
        name   = "architecture"
        values = ["x86_64"]
    }
}

resource "aws_instance" "stacks_demo" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_size
 
  root_block_device {
    volume_size = var.instance_root_device_size
    volume_type = "gp3"
  }
}
 
/*resource "aws_eip" "ec2_eip" {
  vpc      = true
  lifecycle {
    prevent_destroy = true
  }
}
 
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.stacks_demo.id
  allocation_id = aws_eip.ec2_eip.id
}*/
