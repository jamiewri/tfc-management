# these commented variable have been moved to the workspace.
#organization   = "organization-name"
#oauth_token_id = "ot-xxxxxxxxxxxxx"

workspaces = [
  {
    name        = "tfc-aws-network-prod",
    description = "A workspace to managing shared networking objects in prod environment."
    tags        = ["demo", "aws", "network", "prod"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-aws-network"
      branch     = "master"
    }
    teams_access = [
      {
        name   = "developers"
        access = "write"
      },
      {
        name   = "managers"
        access = "read"
      }
    ]

  },
  {
    name        = "tfc-aws-network-dev",
    description = "A workspace to managing shared networking objects in the dev environment"
    tags        = ["demo", "aws", "network", "dev"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-aws-network"
      branch     = "dev"
    }
    teams_access = [
      {
        name   = "developers"
        access = "write"
      },
      {
        name   = "managers"
        access = "read"
      }
    ]
  },
  {
    name        = "tfc-aws-virtual-machine-dev",
    description = "A workspace to managing shared networking objects in the dev environment"
    tags        = ["demo", "aws", "application", "dev"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-aws-virtual-machine"
      branch     = "dev"
    }
    teams_access = [
      {
        name   = "developers"
        access = "write"
      },
      {
        name   = "managers"
        access = "read"
      }
    ]
  },
  {
    name        = "tfc-aws-virtual-machine-prod",
    description = "A workspace to deploys a virtual machine in the prod environment"
    tags        = ["demo", "aws", "application", "prod"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-aws-virtual-machine"
      branch     = "master"
    }
    teams_access = [
      {
        name   = "developers"
        access = "write"
      },
      {
        name   = "managers"
        access = "read"
      }
    ]
  }
]

teams = [
  {
    name = "developers"
  },
  {
    name = "admins"
  },
  {
    name = "managers"
  }
]
