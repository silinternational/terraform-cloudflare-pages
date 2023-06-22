variable "cloudflare_account_id" {
  description = "Cloudflare account ID for Pages deployment"
  type        = string
}

variable "cloudflare_token" {
  description = "Cloudflare API token"
  type        = string
}

variable "project_name" {
  description = "name of the Cloudflare Pages project"
  type        = string
}

variable "repo_name" {
  description = "deployment repository name"
  type        = string
}

variable "repo_owner" {
  description = "deployment repository owner"
  type        = string
}

variable "domain" {
  description = "domain to use for the Cloudflare Pages domain, e.g. example.com"
  type        = string
}

variable "subdomain" {
  description = "subdomain to use for the Cloudflare Pages domain, e.g. app"
  type        = string
}
