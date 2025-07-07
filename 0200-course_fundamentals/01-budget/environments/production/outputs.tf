##########################################################

# Budget Outputs

output "budget_arn" {
  description = "The ARN of the budget"
  value       = module.aws_budget.budget_arn
}

output "budget_id" {
  description = "The ID of the budget"
  value       = module.aws_budget.budget_id
}

output "budget_name" {
  description = "The name of the budget"
  value       = module.aws_budget.budget_name
}

output "budget_type" {
  description = "The type of the budget (COST or USAGE)"
  value       = module.aws_budget.budget_type
}

output "limit_amount" {
  description = "The limit amount of the budget"
  value       = module.aws_budget.limit_amount
}

output "limit_unit" {
  description = "The limit unit of the budget"
  value       = module.aws_budget.limit_unit
}

########################################################## 