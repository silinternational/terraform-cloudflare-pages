variable "cloudflare_account_id" {
  description = "Cloudflare account ID for Pages deployment"
  type        = string
}

variable "build_command" {
  description = "command to build the project"
  type        = string
  default     = "npm run build"
}

variable "build_destination_dir" {
  description = "output directory of the build"
  type        = string
  default     = "public"
}

variable "project_name" {
  description = "name of the Cloudflare Pages project"
  type        = string
}

variable "repo_branch" {
  description = "deployment repository branch"
  type        = string
  default     = "main"
}

variable "repo_name" {
  description = "deployment repository name"
  type        = string
}

variable "repo_owner" {
  description = "deployment repository owner"
  type        = string
}

variable "repo_type" {
  description = "deployment repository owner"
  type        = string
  default     = "github"
}

variable "domain" {
  description = "domain to use for the Cloudflare Pages domain, e.g. example.com"
  type        = string
}

variable "subdomain" {
  description = "subdomain to use for the Cloudflare Pages domain, e.g. app"
  type        = string
}

variable "production_env_vars" {
  description = "environment variables for production deployment, default: { NODE_VERSION = \"22\" }"
  type        = map(string)
  default = {
    NODE_VERSION = "22"
  }
}

variable "preview_env_vars" {
  description = "environment variables for preview deployment, default: { NODE_VERSION = \"22\" }"
  type        = map(string)
  default = {
    NODE_VERSION = "22"
  }
}
