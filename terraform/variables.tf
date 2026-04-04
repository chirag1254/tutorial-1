variable "location" {
  type        = string
  description = "The Azure region to deploy resources into"
  default     = "eastus"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, prod, uat)"
  default     = "dev"
}

variable "project" {
  type        = string
  description = "Project workload name"
  default     = "dlake"
}

variable "tags" {
  type        = map(string)
  description = "Standard tags to be applied to all resources"
  default = {
    Environment = "dev"
    Project     = "datalake"
    ManagedBy   = "Terraform"
  }
}
