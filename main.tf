### Manage Base Layer Workspace ###

resource "tfe_workspace" "base_layer" {
  name              = "AWS_ReInvent_2K19_Base_layer"
  organization      = "re-Invent"
  terraform_version = "0.11.14"
  queue_all_runs    = "false"

  vcs_repo {
    identifier     = "nehrman/AWS_ReInvent_Base_Layer"
    oauth_token_id = "ot-hw7K9eruonMXeEmE"
  }
}

resource "tfe_variable" "base_layer" {
  count        = length(var.base_workspace_variables)
  key          = lookup(var.base_workspace_variables[count.index], "key")
  value        = lookup(var.base_workspace_variables[count.index], "value")
  category     = lookup(var.base_workspace_variables[count.index], "category")
  hcl          = lookup(var.base_workspace_variables[count.index], "hcl")
  sensitive    = lookup(var.base_workspace_variables[count.index], "sensitive")
  workspace_id = tfe_workspace.base_layer.id
}

### Manage Instance Workspace ###

resource "tfe_workspace" "instance" {
  name              = "AWS_ReInvent_2K19_Instance_Hashicat"
  organization      = "re-Invent"
  terraform_version = "0.11.14"
  queue_all_runs    = "false"

  vcs_repo {
    identifier     = "nehrman/AWS_ReInvent_Instance"
    oauth_token_id = "ot-hw7K9eruonMXeEmE"
  }
}

resource "tfe_variable" "instance" {
  count        = length(var.instance_workspace_variables)
  key          = lookup(var.instance_workspace_variables[count.index], "key")
  value        = lookup(var.instance_workspace_variables[count.index], "value")
  category     = lookup(var.instance_workspace_variables[count.index], "category")
  hcl          = lookup(var.instance_workspace_variables[count.index], "hcl")
  sensitive    = lookup(var.instance_workspace_variables[count.index], "sensitive")
  workspace_id = tfe_workspace.instance.id
}

resource "tfe_notification_configuration" "instance" {
  name = "AWS Re:Invent Notification"
  enabled = true
  destination_type = "slack"
  url = var.slack_notification_url
  workspace_external_id = tfe_workspace.instance.external_id
  triggers = ["run:needs_attention","run:completed","run:errored"]
}

### Configure Operations Teams, Members and Permissions ###

resource "tfe_team" "ops" {
  name         = "operations-team"
  organization = "re-Invent"
}

resource "tfe_team_members" "ops" {
  team_id  = tfe_team.ops.id
  usernames = ["nehprod"]
}

resource "tfe_team_access" "ops_base" {
  access       = "admin"
  team_id      = tfe_team.ops.id
  workspace_id = tfe_workspace.base_layer.id
}

resource "tfe_team_access" "ops_instance" {
  access       = "admin"
  team_id      = tfe_team.ops.id
  workspace_id = tfe_workspace.instance.id
}

### Configure Developers Teams, Members and Permissions  ###

resource "tfe_team" "dev" {
  name         = "developers-team"
  organization = "re-Invent"
}

resource "tfe_team_members" "dev" {
  team_id  = tfe_team.dev.id
  usernames = ["nehdev","brumedev","rcassidy-demo-dev"]
}

resource "tfe_team_access" "dev_base" {
  access       = "read"
  team_id      = tfe_team.dev.id
  workspace_id = tfe_workspace.base_layer.id
}

resource "tfe_team_access" "dev_instance" {
  access       = "plan"
  team_id      = tfe_team.dev.id
  workspace_id = tfe_workspace.instance.id
}
