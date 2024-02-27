data "github_user" "current" {
  username = "Jacob-Bordelon"
}

data "github_repository" "test" {
  full_name = "Jacob-Bordelon/personal-terraform"
}

resource "github_repository_environment" "test" {
  repository     = data.github_repository.test.name
  environment    = "dev"
  prevent_self_review = false

  reviewers {
    users = [data.github_user.current.id]
  }

  deployment_branch_policy {
    protected_branches     = false
    custom_branch_policies = true
  }
}