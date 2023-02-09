variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Web Server"
}

variable "web_server_ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}

variable "web_instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

#Availability Zone
variable "availability_zone-1" {
  description = "AZ to create resource"
  type        = string
  default     = null
}

variable "availability_zone-2" {
  description = "AZ to create resource"
  type        = string
  default     = null
}

variable "webserver_sg_id" {
  description = "Web server SG"
  type        = string
  default     = null
}

variable "webserver_subnet_id_1" {
  description = "Web server subnet ID 1"
  type        = string
  default     = null
}

variable "webserver_subnet_id_2" {
  description = "Web server subnet ID 2"
  type        = string
  default     = null
}