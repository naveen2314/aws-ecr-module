variable "name" {
  description = "value"
  type        = string
  default     = ""
}

variable "creation_token" {
  description = " value of tocken"
  type        = string
  default     = null
}

variable "encrypted" {
  description = "value of disk encrypted"
  type        = bool
  default     = true
}


variable "performance_mode" {
  default = null
  type    = string

}

variable "mount_targets" {
  type    = map(any)
  default = {}
}

variable "security_group_description" {
  type    = string
  default = "value of SG"
}

variable "security_group_vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
  default     = null

}

variable "security_group_rules" {
  description = "Map of SG Rule defination to create"
  default     = {}
  type        = map(any)

}


variable "enable_backup_policy" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}

}
