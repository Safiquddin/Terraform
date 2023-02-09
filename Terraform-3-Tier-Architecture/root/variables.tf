/******************************************
   VPC Variables
 *****************************************/
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC."
  type        = string
  default     = "0.0.0.0/0"
}

# Public Web subnets
variable "public_web_subnet-1" {
  description = "The IPv4 CIDR block for the public web subnet."
  type        = string
  default     = ""
}

variable "public_web_subnet-2" {
  description = "The IPv4 CIDR block for the public web subnet."
  type        = string
  default     = ""
}

# Private app Subnets
variable "private_app_subnet-1" {
  description = "The IPv4 CIDR block for the private app subnet."
  type        = string
  default     = ""
}

variable "private_app_subnet-2" {
  description = "The IPv4 CIDR block for the private app subnet."
  type        = string
  default     = ""
}

#Private DB subnets
variable "private_db_subnet-1" {
  description = "The IPv4 CIDR block for the private DB subnet."
  type        = string
  default     = ""
}

variable "private_db_subnet-2" {
  description = "The IPv4 CIDR block for the private DB subnet."
  type        = string
  default     = ""
}


/******************************************
   Web-Server Variables
 *****************************************/
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
  description = "AZ to create Network resource"
  type        = string
  default     = null
}

variable "availability_zone-2" {
  description = "AZ to create Network resource"
  type        = string
  default     = null
}

 /******************************************
   RDS Variables
 *****************************************/
variable "allocated_storage" {
  description = "The Value of DB storage"
  type        = string
  default     = ""
}

variable "db_engine" {
  description = "The Value of DB engine"
  type        = string
  default     = ""
}

variable "engine_version" {
  description = "The Value of DB engine version"
  type        = string
  default     = ""
}

variable "instance_class" {
  description = "The Value of DB instance class/type"
  type        = string
  default     = ""
}

variable "db_name" {
  description = "The Value of DB Name"
  type        = string
  default     = ""
}

variable "db_username" {
  description = "The Value of DB username"
  type        = string
  default     = ""
}

variable "db_password" {
  description = "The Value of DB password"
  type        = string
  default     = ""
}
