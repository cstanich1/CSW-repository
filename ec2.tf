# AWS Resources

resource "aws_instance" "microType" {
  ami           = var.ami
  instance_type = var.vmType

  tags = {
    Name = var.vmName
  }
}