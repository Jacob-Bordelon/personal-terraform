# More info can be found here:
# https://registry.terraform.io/providers/integrations/github/latest/docs#authentication

data "github_user" "current" {
  username = "Jacob-Bordelon" # uses git cli 
}

variable repo_fullname {
  type        = string
}

data "github_repository" "test" {
  full_name = "${var.repo_fullname}"
}

 
resource "github_repository_environment" "test" {
  repository     = data.github_repository.test.name
  environment    = "staging"
  prevent_self_review = false

  reviewers {
    users = [data.github_user.current.id]
  }

  deployment_branch_policy {
    protected_branches     = false
    custom_branch_policies = true
  }
}