variable "webserver_sg" {
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

variable "webserver_instance1_id" {
  description = "Web server  ID "
  type        = string
  default     = null
}

variable "webserver_instance1" {
  description = "Web server "
  default     = null
}

variable "webserver_instance2" {
  description = "Web server "
  default     = null
}

variable "webserver_instance2_id" {
  description = "Web server  ID "
  type        = string
  default     = null
}
variable "vpc_id" {
    description = "VPC ID"
    type = string
}
