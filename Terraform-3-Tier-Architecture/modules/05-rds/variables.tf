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

variable "db_sg_id" {
  description = "The Value of DB SG"
  type        = string
  default     = ""
}

variable "db_sub1_id" {
  description = "The Value of DB SG"
  type        = string
  default     = ""
}

variable "db_sub2_id" {
  description = "The Value of DB SG"
  type        = string
  default     = ""
}