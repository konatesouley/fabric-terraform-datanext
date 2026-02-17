resource "fabric_lakehouse" "this" {
  display_name = var.name
  workspace_id = var.workspace_id

  configuration = {
    enable_schemas = var.schema_activate
  }
}
