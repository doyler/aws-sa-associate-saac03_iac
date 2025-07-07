##########################################################

# VPC Outputs

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.example.id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.example.arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.example.cidr_block
}

output "vpc_default_route_table_id" {
  description = "The ID of the default route table"
  value       = aws_vpc.example.default_route_table_id
}

output "vpc_default_security_group_id" {
  description = "The ID of the default security group"
  value       = aws_vpc.example.default_security_group_id
}

########################################################## 