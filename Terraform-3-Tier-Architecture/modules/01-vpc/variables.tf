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
