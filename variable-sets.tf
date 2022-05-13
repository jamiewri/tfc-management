resource "tfe_variable_set" "dev" {
  name         = "Dev Vars"
  description  = "Variable set to be attached to each dev workspace"
  global       = false
  organization = var.organization
}

resource "tfe_variable" "dev" {
  key             = "environement"
  value           = "{ environment = "dev"}"
  hcl = true
  category        = "terraform"
  description     = "Sets the env"
  variable_set_id = tfe_variable_set.dev.id
}