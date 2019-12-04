variable "base_workspace_variables" {
  description = "Defines list of variables needed for the Base_Layer Workspace"
  type = list
  default = []
}

variable "instance_workspace_variables" {
  description = "Defines list of variables needed for the Instance Workspace"
  type = list
  default = []
}

variable "slack_notification_url" {
  description = "Defines the WebHook URL for Slack notification"
  type = string
  default = ""
}