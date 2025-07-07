# IAM Variables

variable "iam_username" {
  type = string
  description = "The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces."
  default = "iamadmin"
  
  validation {
    condition     = can(regex("^[a-zA-Z0-9+=,.@_-]+$", var.iam_username))
    error_message = "IAM username must contain only alphanumeric characters and `+=,.@_-`."
  }
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
  
  validation {
    condition     = var.password_length >= 8 && var.password_length <= 128
    error_message = "Password length must be between 8 and 128 characters."
  }
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the IAM user"
  default = {
    ManagedBy = "terraform"
    Project   = "saac03-course"
  }
}