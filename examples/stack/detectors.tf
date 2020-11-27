module "signalfx-detectors-smart-agent_system-common" {
  source = "../../modules/smart-agent_system-common"

  environment   = var.environment
  notifications = local.notifications
}

