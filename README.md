# terraform-azurerm-redis

This Terraform module deploys a new redis cache in Azure.

## Example Usage

```hcl
provider "azurerm" {
  features {}
}

module "redis" {
  source = "../terraform-azurerm-redis"
  location = "eastus"
  redis_name = "test1"
  sku_name = "Standard"
  app_name = "BigID"
}

```

## Argument Reference

The following arguments are supported.

- **location** - (Required) The location of where the redis cache is being deployed.
- **redis_name** - (Required) The redis name for the redis cache, example: redis-infrastructure-sandbox-eastus-${redis_name}.
- **sku_name** - (Required) The SKU of Redis to use. Possible values are Basic, Standard and Premium.
- **app_name** - (Required) The app name for the resource group, example: rg-infrastructure-sandbox-eastus-${app_name}.

