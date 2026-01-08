# AWS Resources


resource "aws_instance" "microType" {
 for_each = var.ec2_instances
  ami           = var.ami
  instance_type = each.value
 # instance_type = var.vmType
  #count = var.novm

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    #Name = "${var.vmName}-${count.index}"
    Name = "CSWvm-${each.key}"
  }
  }