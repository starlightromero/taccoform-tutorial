variable "service" {
  description = "a short/unique service and/or application name"
  default     = "web"
  type        = string
}

variable "env" {
  description = "a short/unique environment name"
  default     = "prod"
  type        = string
}

variable "region" {
  description = "a digital ocean provided geographic location"
  default     = "sfo3"
  type        = string
}