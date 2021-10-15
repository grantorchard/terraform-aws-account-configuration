provider "aws" {
    alias = "262534729993"
		access_key = data.vault_aws_access_credentials.262534729993.access_key
	  secret_key = data.vault_aws_access_credentials.262534729993.secret_key
		token = data.vault_aws_access_credentials.262534729993.security_token
}

data "vault_aws_access_credentials" "262534729993" {
	backend = "aws"
	type = "sts"
	role = "terraform"
	role_arn = "arn:aws:iam::262534729993:role/OrganizationAccountAccessRole"
	ttl = "30m"
}