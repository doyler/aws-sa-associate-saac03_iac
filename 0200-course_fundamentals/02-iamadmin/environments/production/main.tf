module "iam_admin" {
   source = "../../modules/iam"

   iam_username = var.iam_username
   iam_path = var.iam_path
   policy_arn = var.policy_arn
   password_reset_required = var.password_reset_required
   password_length = var.password_length
   tags = var.tags
}