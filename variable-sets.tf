// Dev variables
data "tfe_workspace_ids" "dev" {
  tag_names    = ["dev"]
  organization = var.organization
}


resource "tfe_variable_set" "dev" {
  name          = "Development variables"
  description   = "Variable set to be attached to each dev workspace"
  organization  = var.organization
  workspace_ids = values(data.tfe_workspace_ids.dev.ids)

}

resource "tfe_variable" "dev" {
  for_each        = var.dev
  key             = each.key
  value           = each.value
  category        = "terraform"
  description     = "Sets the dev environment specfic variables"
  variable_set_id = tfe_variable_set.dev.id
}

// Prod Variables
resource "tfe_variable_set" "prod" {
  name          = "Production Variables"
  description   = "Variable set to be attached to each prod workspace"
  organization  = var.organization
  workspace_ids = values(data.tfe_workspace_ids.prod.ids)
}

resource "tfe_variable" "prod" {
  for_each        = var.prod
  key             = each.key
  value           = each.value
  category        = "terraform"
  description     = "Sets the prod environment specfic variables"
  variable_set_id = tfe_variable_set.prod.id
}

data "tfe_workspace_ids" "prod" {
  tag_names    = ["prod"]
  organization = var.organization
}
