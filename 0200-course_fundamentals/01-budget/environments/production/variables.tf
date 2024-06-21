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

# Notification Variables

variable "email_address" {
  type = string
  description = "E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
}

##########################################################