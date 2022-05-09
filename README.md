# Terraform Cloud Management
This repos manages workspaces, modules, policies and users in Terraform Cloud.

## Installation
1. Create new Terraform Cloud organization.
2. Configure VCS connection.
3. Create new workspaces named `tfc-management`.
4. Configure the following variables in the workspace `tfc-management`.
  - Environement variable: `TFE_TOKEN`
  - Terraform variable: `organization`
  - Terraform variable: `oauth_token_id`
