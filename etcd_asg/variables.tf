variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-central-1"
}

# CoreOS
variable "aws_amis" {
  default = {
    "ap-northeast-1" = "ami-ce90f2a9"
    "eu-central-2" = "ami-ed0ec882"
    "eu-central-1" = "ami-11b14b7e"
  }
}

variable "availability_zones" {
  default     = "eu-central-1a,eu-central-1b"
  description = "List of availability zones, use AWS CLI to find your "
}

variable "key_name" {
  description = "aws key"
  default = "etcd-key"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "3"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "5"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "3"
}
