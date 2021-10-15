locals {
	aws_accounts = data.terraform_remote_state.this.outputs.account_details
}

module "vpc" {
	for_each = toset([ for account in local.aws_accounts: account.id ])
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.8.0"
  # insert the 21 required variables here
}