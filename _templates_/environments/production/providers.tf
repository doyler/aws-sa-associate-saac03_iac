# Configure the AWS Provider
provider "aws" {
  region = var.region

  # https://stackoverflow.com/questions/64124063/how-to-make-terraform-to-read-aws-credentials-file
  access_key = var.access_key
  secret_key = var.secret_key
}
