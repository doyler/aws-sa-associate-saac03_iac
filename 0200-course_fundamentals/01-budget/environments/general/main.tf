module "aws_budget" {
   source = "../../modules/budget"

   email_address = var.email_address
}