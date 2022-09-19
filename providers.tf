terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3"
			#configuration_aliases = [ aws.aws_091604009711, aws.aws_262534729993 ]
    }
  }
}