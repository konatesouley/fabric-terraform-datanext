resource "fabric_workspace" "this" {
  display_name = var.name
  capacity_id  = var.capacity_id
}

# Donner accès au Service Principal
# resource "fabric_workspace_role_assignment" "sp_admin" {
#   workspace_id = fabric_workspace.this.id
#   principal_id = var.service_principal_object_id
#   role         = "Admin"
# }
