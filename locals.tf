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
    bronze = "Lakehouse_bronze"
    silver = "lake_silver"
    gold = "lakehouse_gold"
  }

  warehouse = "warehouse_gold"
}
