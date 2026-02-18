############################
# DATA WORKSPACE
############################
module "data_workspace" {
  source                      = "./modules/workspace"
  name                        = local.workspaces.data
  capacity_id                 = var.fabric_capacity_id
  service_principal_object_id = var.service_principal_object_id
}

############################
# ANALYTICS WORKSPACE
############################
module "analytics_workspace" {
  source                      = "./modules/workspace"
  name                        = local.workspaces.analytics
  capacity_id                 = var.fabric_capacity_id
  service_principal_object_id = var.service_principal_object_id
}

############################
# DATA WORKSPACE SPARK ENV
############################
module "data_workspace_spark_env" {
  source       = "./modules/sparkenv"
  name         = local.workspaces.spark_environnement
  workspace_id = module.data_workspace.workspace_id

}


############################
# BRONZE LAKEHOUSE
############################
module "bronze_lakehouse" {
  source          = "./modules/lakehouse"
  name            = local.lakehouses.bronze
  workspace_id    = module.data_workspace.workspace_id
  schema_activate = local.lakehouses_schema.enable_schemas
}

############################
# SILVER LAKEHOUSE
############################
module "silver_lakehouse" {
  source          = "./modules/lakehouse"
  name            = local.lakehouses.silver
  workspace_id    = module.data_workspace.workspace_id
  schema_activate = local.lakehouses_schema.enable_schemas
}

############################
# GOLD WAREHOUSE
############################
module "gold_warehouse" {
  source       = "./modules/warehouse"
  name         = local.warehouse
  workspace_id = module.data_workspace.workspace_id
}
