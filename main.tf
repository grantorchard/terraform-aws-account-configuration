locals {
	aws_accounts = data.terraform_remote_state.this.outputs.account_details
}

module "vpc" {
	for_each = toset(formatlist("aws_", [ for account in local.aws_accounts: account.id ]))
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.8.0"
	providers = {
    aws = each.value
	}
  # insert the 21 required variables here
}