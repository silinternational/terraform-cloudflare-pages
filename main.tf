
locals {
  hostname = "${var.subdomain}.${var.domain}"
}

/*
 * Host on Cloudflare Pages
 */

resource "cloudflare_pages_project" "ui" {
  name              = var.project_name
  account_id        = var.cloudflare_account_id
  production_branch = var.repo_branch

  build_config {
    build_command   = var.build_command
    destination_dir = var.build_destination_dir
  }

  deployment_configs {
    preview {
      compatibility_date = "2023-06-22"
      environment_variables = {
        NODE_VERSION = "18"
      }
    }

    production {
      compatibility_date = "2023-06-22"
      environment_variables = {
        NODE_VERSION = "18"
      }
    }
  }

  source {
    config {
      owner                   = var.repo_owner
      preview_branch_includes = ["*"]
      production_branch       = var.repo_branch
      repo_name               = var.repo_name
    }
    type = var.repo_type
  }
}

resource "cloudflare_pages_domain" "ui" {
  account_id   = var.cloudflare_account_id
  domain       = "${var.subdomain}.${var.domain}"
  project_name = cloudflare_pages_project.ui.name
}
