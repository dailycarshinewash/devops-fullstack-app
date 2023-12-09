# Basic

variable "AWS_REGION" {
  description = "AWS Region for resource."
  default     = "us-east-1"
  type        = string
}

variable "ENVIRONMENT" {
  type        = string
  description = "Environment for application."
  default     = "devl"
}

variable "APPLICATION" {
  type        = string
  description = "Application Name"
}
