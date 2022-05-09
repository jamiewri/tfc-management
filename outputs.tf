output "workspaces_under_management" {
  value = [for workspace in var.workspaces : workspace.name]
}
