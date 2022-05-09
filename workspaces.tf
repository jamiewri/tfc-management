# This is a reference to an internal registry. You can find this 
# module here (https://github.com/jamiewri/terraform-tfe-workspace)

module "workspace" {
  source  = "app.terraform.io/devopstower/workspace/tfe"
  version = "~> 0.1.1"

  for_each = {
    for index, workspace in var.workspaces :
    workspace.name => workspace
  }

  name         = each.value.name
  organization = var.organization
  description  = each.value.description
  tag_names    = each.value.tags
  auto_apply   = each.value.auto_apply

  vcs_repo_identifier     = each.value.vcs_repo.identifier
  vcs_repo_branch         = each.value.vcs_repo.branch
  vcs_repo_oauth_token_id = var.oauth_token_id

  teams_access = each.value.teams_access
}
