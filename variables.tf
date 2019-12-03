variable "region" {
  default = "us-west-1"
}

variable "second-region" {
  default = "us-west-2"
}

variable "shared_credentials_file" {
  default = "~/.aws/credentials"
}

variable "profile" {
  default = "radarjam"
}

# AMI = US-West-1
variable "ami" {
  default = "ami-074e2d6769f445be5"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = "2" # For the number of instances you want. You would need: count = "${var.instance.count}" in the resource
}


variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_cidr_two" {
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  default = "us-west-2b"
}

variable "availability_zone_two" {
  default = "us-west-1c"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "key_path" {
  default = "~/.ssh/id_rsa.pub"
}
