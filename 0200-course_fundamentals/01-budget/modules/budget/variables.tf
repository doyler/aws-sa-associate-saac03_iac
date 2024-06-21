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

# Budget Variables

variable "budget_name" {
  type = string
  description = "The name of a budget. Unique within accounts."
  default = "My Zero-Spend Budget"
}

variable "budget_type" {
  type = string
  description = "Whether this budget tracks monetary cost or usage."
  default = "COST"
}

variable "limit_amount" {
  type = string
  description = "The amount of cost or usage being measured for a budget."
  default = "1"
}

variable "limit_unit" {
  type = string
  description = "The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB."
  default = "USD"
}

variable "time_period_end" {
  type = string
  description = "The end of the time period covered by the budget. There are no restrictions on the end date. Format: 2017-01-01_12:00."
  default = "2067-04-30_00:00"
}

variable "time_period_start" {
  type = string
  description = "The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: 2017-01-01_12:00."
  default = "2017-04-01_00:00"
}

variable "time_unit" {
  type = string
  description = "The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, and DAILY."
  default = "MONTHLY"
}

##########################################################

# Notification Variables

variable "comparison_operator" {
  type = string
  description = "Comparison operator to use to evaluate the condition. Can be LESS_THAN, EQUAL_TO or GREATER_THAN."
  default = "EQUAL_TO"
}

variable "threshold" {
  type = number
  description = "Threshold when the notification should be sent."
  default = 0.01
}

variable "threshold_type" {
  type = string
  description = "What kind of threshold is defined. Can be PERCENTAGE OR ABSOLUTE_VALUE."
  default = "ABSOLUTE_VALUE"
}

variable "notification_type" {
  type = string
  description = "What kind of budget value to notify on. Can be ACTUAL or FORECASTED."
  default = "ACTUAL"
}

variable "email_address" {
  type = string
  description = "E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
}

##########################################################