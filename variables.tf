variable "region" {
  description = "Select the region where you want to execute"
  default = "us-west-1"
}

variable "cidr_range" {
  description = "Provide vpc size"
  default = "10.0.0.0/16"
}

variable "kubernetes_version" {
  default     = 1.29
  description = "kubernetes version"
}