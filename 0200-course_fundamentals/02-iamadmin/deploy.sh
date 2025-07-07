#!/bin/bash

# Deploy IAM Admin User
# This script deploys an IAM user with console access, MFA, and AdministratorAccess policy

set -e

echo "🚀 Deploying IAM Admin User..."

# Change to the production environment directory
cd environments/production

# Initialize Terraform
echo "📦 Initializing Terraform..."
terraform init

# Plan the deployment
echo "📋 Planning deployment..."
terraform plan -var-file="production.tfvars"

# Apply the deployment
echo "🔧 Applying deployment..."
terraform apply -var-file="production.tfvars" -auto-approve

# Show outputs
echo "✅ Deployment complete! Here are the outputs:"
echo ""
echo "IAM User Details:"
terraform output iam_user_name
terraform output iam_user_arn
echo ""
echo "MFA Device Details:"
terraform output mfa_device_arn
echo ""
echo "🔐 IMPORTANT: The password and MFA seed are sensitive outputs."
echo "   To view them, run: terraform output iam_user_password"
echo "   To view MFA seed, run: terraform output mfa_device_base32_string_seed"
echo "   To view QR code, run: terraform output mfa_device_qr_code_png"
echo ""
echo "📱 Use an authenticator app (like Google Authenticator) to scan the QR code"
echo "   or manually enter the base32 seed to set up MFA for the user." 