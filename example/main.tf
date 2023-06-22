
module "app" {
  source = "github.com/silinternational/terraform-cloudflare-pages?ref=0.1.0"

  cloudflare_account_id = var.cloudflare_account_id
  project_name          = "test-project"
  repo_name             = "test-repo"
  repo_owner            = "anonymous"
  domain                = "example.com"
  subdomain             = "test-app"
}
