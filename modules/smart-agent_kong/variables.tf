# Module specific

# Heartbeat detector

variable "heartbeat_disabled" {
  description = "Disable all alerting rules for heartbeat detector"
  type        = bool
  default     = null
}

variable "heartbeat_notifications" {
  description = "Notification recipients list per severity overridden for heartbeat detector"
  type        = map(list(string))
  default     = {}
}

variable "heartbeat_timeframe" {
  description = "Timeframe for heartbeat detector (i.e. \"10m\")"
  type        = string
  default     = "20m"
}

variable "heartbeat_aggregation_function" {
  description = "Aggregation function and group by for heartbeat detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ""
}

# treatment_limit detector

variable "treatment_limit_disabled" {
  description = "Disable all alerting rules for treatment limit detector"
  type        = bool
  default     = null
}

variable "treatment_limit_disabled_critical" {
  description = "Disable critical alerting rule for treatment limit detector"
  type        = bool
  default     = null
}

variable "treatment_limit_disabled_major" {
  description = "Disable major alerting rule for treatment limit detector"
  type        = bool
  default     = null
}

variable "treatment_limit_notifications" {
  description = "Notification recipients list per severity overridden for treatment limit detector"
  type        = map(list(string))
  default     = {}
}

variable "treatment_limit_aggregation_function" {
  description = "Aggregation function and group by for treatment limit detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ""
}

variable "treatment_limit_transformation_function" {
  description = "Transformation function for treatment limit detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='15m')"
}

variable "treatment_limit_threshold_critical" {
  description = "Critical threshold for treatment limit detector"
  type        = number
  default     = 20
}

variable "treatment_limit_threshold_major" {
  description = "Major threshold for treatment limit detector"
  type        = number
  default     = 0
}

