# Output the generated password for the IAM user
output "iam_user_password" {
  description = "The generated password for the IAM user"
  value       = aws_iam_user_login_profile.iamadmin_login.password
  sensitive   = true
}

# Output the MFA device details
output "mfa_device_arn" {
  description = "The ARN of the virtual MFA device"
  value       = aws_iam_virtual_mfa_device.iamadmin_mfa.arn
}

output "mfa_device_base32_string_seed" {
  description = "The base32 seed encoded as a base64 string"
  value       = aws_iam_virtual_mfa_device.iamadmin_mfa.base_32_string_seed
  sensitive   = true
}

output "mfa_device_qr_code_png" {
  description = "A QR code PNG that encodes the base32 seed"
  value       = aws_iam_virtual_mfa_device.iamadmin_mfa.qr_code_png
  sensitive   = true
}

# Output the IAM user details
output "iam_user_name" {
  description = "The name of the IAM user"
  value       = aws_iam_user.iamadmin_user.name
}

output "iam_user_arn" {
  description = "The ARN of the IAM user"
  value       = aws_iam_user.iamadmin_user.arn
} 