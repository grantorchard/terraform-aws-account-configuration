provider "aws" {
    alias = "091604009711"
		access_key = data.vault_aws_access_credentials.091604009711.access_key
	  secret_key = data.vault_aws_access_credentials.091604009711.secret_key
		token = data.vault_aws_access_credentials.091604009711.security_token
}

data "vault_aws_access_credentials" "091604009711" {
	backend = "aws"
	type = "sts"
	role = "terraform"
	role_arn = "arn:aws:iam::091604009711:role/OrganizationAccountAccessRole"
	ttl = "30m"
}