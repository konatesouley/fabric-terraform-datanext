locals {
  prefix = "fabric-${var.environment}"

  workspaces = {
    data      = "${local.prefix}-data"
    analytics = "${local.prefix}-analytics"
  }
  lakehouses_schema = {
    enable_schemas = true
    disable_schema = false
  }
  lakehouses = {
    bronze = "bronze"
    silver = "silver"
  }

  warehouse = "gold"
}
