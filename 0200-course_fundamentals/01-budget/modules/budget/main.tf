# Create an AWS Cost Budget
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget
resource "aws_budgets_budget" "cost" {
  name              = var.budget_name
  budget_type       = var.budget_type
  limit_amount      = var.limit_amount
  limit_unit        = var.limit_unit
  time_period_end   = var.time_period_end
  time_period_start = var.time_period_start
  time_unit         = var.time_unit

  # Example for limiting the budget to a specific cost filter
  # https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-create-filters.html
  /*
  cost_filter {
    name = "Service"
    values = [
      "Amazon Elastic Compute Cloud - Compute",
    ]
  }
  */

  notification {
    comparison_operator        = var.comparison_operator
    threshold                  = var.threshold
    threshold_type             = var.threshold_type
    notification_type          = var.notification_type
    subscriber_email_addresses = [var.email_address]
  }
}

# Modules - https://developer.hashicorp.com/terraform/tutorials/modules/module