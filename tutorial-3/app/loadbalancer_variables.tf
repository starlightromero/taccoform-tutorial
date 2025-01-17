variable "lb_fr_entry_port_http" {
  description = "the TCP port which outside users are allowed to connect to the load balancer"
  default     = 80
  type        = number
}

variable "lb_fr_entry_protocol_http" {
  description = "the protocol which outside users are allowed to connect to the load balancer"
  default     = "http"
  type        = string
}

variable "lb_fr_target_port_http" {
  description = "after initial connection to the load balancer, request will be forwarded to this TCP on a droplet"
  default     = 80
  type        = number
}

variable "lb_fr_target_protocol_http" {
  description = "after the initial connection to the load balancer, request will be forwarded as this protocol on a droplet"
  default     = "http"
  type        = string
}

variable "lb_hc_path" {
  description = "the path to perform the http healthcheck on"
  default     = "/"
  type        = string
}