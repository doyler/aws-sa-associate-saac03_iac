module "aws_budget" {
   source = "../../modules/vpc"
 
   access_key = var.access_key
   secret_key = var.secret_key
   
   cidr_block = var.cidr_block
}