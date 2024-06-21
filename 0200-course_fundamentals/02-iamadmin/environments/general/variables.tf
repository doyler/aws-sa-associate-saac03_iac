##########################################################

# AWS or Authentication/Access Variables

variable "region" {
  type = string
  description = "Which AWS region to deploy to"
  default = "us-east-1"
}

variable "access_key" {
  type = string
  description = "Access key for the AWS account to use"
}

variable "secret_key" {
  type = string
  description = "Secret key for the AWS account to use"
}

##########################################################

# VPC Variables

variable "cidr_block" {
  type = string
  description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length."
  default = "10.0.0.0/16"
}

##########################################################