

#variable for our ec2 resource block


variable "ami" {
  type        = string
  description = "This is the variable for our AMI ec2 instance"
  #default     = "ami-0ae8f15ae66fe8cda"
}


variable "instance_type" {
  type        = string
  description = "This is the size of our image in cpus"
 # default     = "t2.medium"
}


variable "tags" {
  type = map(string)
  default = {
    Name       = "webserver"
    Env        = "dev"
    Owner      = "medinat"
    Created_by = "Codemed"
  }
}
