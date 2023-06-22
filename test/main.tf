
module "test" {
  source = "../"

  cloudflare_account_id = "01234567890abcdef0123456789abcde"
  project_name          = "test-project"
  repo_name             = "test-repo"
  repo_owner            = "anonymous"
  domain                = "example.com"
  subdomain             = "test-app"
}

provider "aws" {
  region = "us-east-2"
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 3.23"
    }
  }
}
