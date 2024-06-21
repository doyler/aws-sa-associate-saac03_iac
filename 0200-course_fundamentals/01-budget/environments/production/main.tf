module "aws_budget" {
   source = "../../modules/budget"
 
   access_key = var.access_key
   secret_key = var.secret_key
   email_address = var.email_address
}