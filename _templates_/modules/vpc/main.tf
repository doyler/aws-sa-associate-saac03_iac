# Create an AWS VPC
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
  tags       = merge(var.tags, {
    Name = "example-vpc"
  })
}

# Modules - https://developer.hashicorp.com/terraform/tutorials/modules/module