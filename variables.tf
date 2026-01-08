variable "ami" {
  type    = string
  default = "ami-068c0051b15cdb816"
}

variable "vmType" {
  type    = string
  default = "t3.micro"
}

variable "vmName" {
  type    = string
  default = "CSW-VM1-DAY3"
}

variable "novm" {
  type = number
  description = "number of VMs to be created"
}

variable "ec2_instances" {
  type = map(string)
  default = {
    "web" = "t3.micro"
    "db" = "t2.small"
  }
  
}