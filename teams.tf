resource "tfe_team" "team" {
  for_each = {
    for index, team in var.teams :
    team.name => team
  }

  name         = each.value.name
  organization = var.organization
}
