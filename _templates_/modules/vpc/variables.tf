##########################################################

# VPC Variables

variable "cidr_block" {
  type = string
  description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length."
  default = "10.0.0.0/16"
  
  validation {
    condition     = can(cidrhost(var.cidr_block, 0))
    error_message = "CIDR block must be a valid IPv4 CIDR block."
  }
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the VPC"
  default = {
    ManagedBy = "terraform"
    Project   = "saac03-course"
  }
}

##########################################################