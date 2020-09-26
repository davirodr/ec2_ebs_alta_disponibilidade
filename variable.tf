variable "enable_ami" {
  type        = bool
  default     = false
  description = "If true need ami paraments in terrafile"
}
variable "ami" {
  type        = string
  default     = null
  description = "need enable_ami true to work and in terrafile ami = amiID"
}

variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance"
  type        = list(map(string))
  default     = []
}
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Type default instance"
}

variable "subnets" {
  type = string
  description = "(optional) describe your variable"
}

variable "ambiente" {
  type = string
  description = "(optional) describe your variable"
}