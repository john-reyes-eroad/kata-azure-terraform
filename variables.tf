variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Azure region for deployed resources"
  type        = string
  default     = "australiasoutheast"
}

variable "owner_email" {
  description = "Email address of the resource owner"
  type        = string
}

variable "owner_platform" {
  description = "Platform or team that owns the resource"
  type        = string
}

variable "date_delete_after" {
  description = "Deletion date in YYYY-MM-DD format"
  type        = string

  validation {
    condition     = can(regex("^\\d{4}-\\d{2}-\\d{2}$", var.date_delete_after))
    error_message = "date_delete_after must be in YYYY-MM-DD format."
  }
}
