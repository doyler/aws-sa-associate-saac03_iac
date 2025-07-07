# Create an AWS IAM user
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "iamadmin_user" {
  name = var.iam_username
  path = var.iam_path
  tags = var.tags
}

# Create login profile for console access
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile
resource "aws_iam_user_login_profile" "iamadmin_login" {
  user                    = aws_iam_user.iamadmin_user.name
  password_reset_required = var.password_reset_required
  password_length         = var.password_length
}

# Attach configurable IAM policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment
resource "aws_iam_user_policy_attachment" "iamadmin_policy" {
  user       = aws_iam_user.iamadmin_user.name
  policy_arn = var.policy_arn
}

# Create virtual MFA device
# NOTE: This MFA device will need to be associated to the account manually, as it requires the QR code or base32 seed
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_virtual_mfa_device
resource "aws_iam_virtual_mfa_device" "iamadmin_mfa" {
  virtual_mfa_device_name = "SAA-C03_Test_${var.iam_username}"
  #user_name               = aws_iam_user.iamadmin_user.name
}

# Modules - https://developer.hashicorp.com/terraform/tutorials/modules/module