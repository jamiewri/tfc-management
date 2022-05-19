variable "organization" {
  type    = string
  default = ""
}

variable "oauth_token_id" {
  type    = string
  default = ""
}

variable "workspaces" {
  type = list(object({
    name        = string
    description = string
    tags        = list(string)
    auto_apply  = string
    vcs_repo = object({
      identifier = string
      branch     = string
    })
    teams_access = list(object({
      name   = string
      access = string
    }))
  }))

  default = []
}

variable "teams" {
  type = list(object({
    name = string
  }))

  default = []
}

variable "dev" {
  type = map(string)
}

variable "prod" {
  type = map(string)
}
