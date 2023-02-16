variable "key_name" {
  type        = string
  default     = "terraform-key"
  description = "key for the instance"
}

variable "instance_type"{
    type = string
    default = "t2.micro"
    description = "instance type for the ec2" 
}