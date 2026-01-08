# AWS Resources

resource "aws_instance" "microType" {
  ami           = var.ami
  instance_type = var.vmType

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.vmName
  }
}