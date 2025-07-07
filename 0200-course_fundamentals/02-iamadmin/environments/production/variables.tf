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

# IAM Variables

variable "iam_username" {
  type = string
  description = "The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces."
  default = "iamadmin"
}

variable "iam_path" {
  type = string
  description = "Path in which to create the user."
  default = "/"
}

variable "policy_arn" {
  type        = string
  description = "ARN of the IAM policy to attach to the user"
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "password_reset_required" {
  type        = bool
  description = "Whether the user should be forced to reset their password on first login"
  default     = false
}

variable "password_length" {
  type        = number
  description = "Length of the generated password"
  default     = 8
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the IAM user"
  default = {
    Environment = "production"
    ManagedBy   = "terraform"
    Project     = "saac03-course"
  }
}

##########################################################