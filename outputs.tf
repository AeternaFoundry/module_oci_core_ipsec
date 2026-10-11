output "core_ipsecs_id" {
  description = "Map of id values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no id are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_ipsecs_compartment_id" {
  description = "Map of compartment_id values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_ipsecs_cpe_id" {
  description = "Map of cpe_id values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no cpe_id are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.cpe_id if v.cpe_id != null && length(v.cpe_id) > 0 }
}
output "core_ipsecs_cpe_local_identifier" {
  description = "Map of cpe_local_identifier values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no cpe_local_identifier are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.cpe_local_identifier if v.cpe_local_identifier != null && length(v.cpe_local_identifier) > 0 }
}
output "core_ipsecs_cpe_local_identifier_type" {
  description = "Map of cpe_local_identifier_type values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no cpe_local_identifier_type are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.cpe_local_identifier_type if v.cpe_local_identifier_type != null && length(v.cpe_local_identifier_type) > 0 }
}
output "core_ipsecs_defined_tags" {
  description = "Map of defined_tags values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_ipsecs_display_name" {
  description = "Map of display_name values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no display_name are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_ipsecs_drg_id" {
  description = "Map of drg_id values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no drg_id are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.drg_id if v.drg_id != null && length(v.drg_id) > 0 }
}
output "core_ipsecs_freeform_tags" {
  description = "Map of freeform_tags values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_ipsecs_state" {
  description = "Map of state values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no state are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_ipsecs_static_routes" {
  description = "Map of static_routes values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no static_routes are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.static_routes if v.static_routes != null && length(v.static_routes) > 0 }
}
output "core_ipsecs_time_created" {
  description = "Map of time_created values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no time_created are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_ipsecs_transport_type" {
  description = "Map of transport_type values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no transport_type are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.transport_type if v.transport_type != null && length(v.transport_type) > 0 }
}
output "core_ipsecs_tunnel_configuration" {
  description = "Map of tunnel_configuration values across all core_ipsecs, keyed the same as var.core_ipsecs except keys with no tunnel_configuration are omitted"
  value       = { for k, v in oci_core_ipsec.core_ipsecs : k => v.tunnel_configuration if v.tunnel_configuration != null && length(v.tunnel_configuration) > 0 }
}

