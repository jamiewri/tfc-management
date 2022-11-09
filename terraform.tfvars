# these commented variable have been moved to the workspace.
#organization   = "organization-name"
#oauth_token_id = "ot-xxxxxxxxxxxxx"

dev = {
  environment_code = "dev",
  project_code     = "jwr-1234"
}

prod = {
  environment_code = "prod",
  project_code     = "jwr-5678"
}

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
      branch     = "main"
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
    name        = "tfc-servicenow-keepalive",
    description = "Send hourly API request to ServiceNow developer instance to stop it being deleted."
    tags        = ["demo", "servicenow", "management"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-servicenow-keepalive"
      branch     = "main"
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
    name        = "tfc-credentials",
    description = "Takes AWS env args and saves them in variable sets."
    tags        = ["management", "credentials"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-credentials"
      branch     = "main"
    }
    teams_access = [
      {
        name   = "developers"
        access = "write"
      }
    ]
  },
  {
    name        = "tfc-gcp-kubernetes-cluster",
    description = "Deploys a kubernetes cluster in to GCP"
    tags        = ["gcp"]
    auto_apply  = "true"
    vcs_repo = {
      identifier = "jamiewri/tfc-gcp-kubernetes-cluster"
      branch     = "main"
    }
    teams_access = [
      {
        name   = "developers"
        access = "write"
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
