##########################################################

# Budget Outputs

output "budget_arn" {
  description = "The ARN of the budget"
  value       = aws_budgets_budget.cost.arn
}

output "budget_id" {
  description = "The ID of the budget"
  value       = aws_budgets_budget.cost.id
}

output "budget_name" {
  description = "The name of the budget"
  value       = aws_budgets_budget.cost.name
}

output "budget_type" {
  description = "The type of the budget (COST or USAGE)"
  value       = aws_budgets_budget.cost.budget_type
}

output "limit_amount" {
  description = "The limit amount of the budget"
  value       = aws_budgets_budget.cost.limit_amount
}

output "limit_unit" {
  description = "The limit unit of the budget"
  value       = aws_budgets_budget.cost.limit_unit
}

########################################################## 