locals {
	aws_accounts = data.terraform_remote_state.this.account_details
}

module "vpc" {
	for_each = { for account in aws_accounts: account => account.id }
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.8.0"
  # insert the 21 required variables here
}