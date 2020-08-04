variable "location" {
  description = "Resource Group Location"
  type = string
}

variable "name" {
  description = "Prefix for name"
  type = string
}

variable "sku_name" {
  description = "Redis Cache Sku name. Can be Basic, Standard or Premium"
  type = string
  default = "Standard"
}

variable "redis_family" {
  description = "Redis family: values are C (for Basic/Standard SKU family) and P (for Premium)"
  type = string
}


variable "tls_version" {
  description = "Minimum TLS version mandated by security"
  type = number
  default = 1.2
}