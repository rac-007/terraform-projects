#Defining Variables
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1"
}

variable "instance_name" {
  default = "Server-Ubuntu-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0c7217cdde317cfec"
    us-west-1 = "ami-0ce2cb35386fc22e9"
    eu-west-1 = "ami-0905a3c97561e0b69"

  }

}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
