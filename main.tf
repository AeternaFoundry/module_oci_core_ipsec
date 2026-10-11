resource "oci_core_ipsec" "core_ipsecs" {
  for_each = var.core_ipsecs

  compartment_id            = each.value.compartment_id
  cpe_id                    = each.value.cpe_id
  drg_id                    = each.value.drg_id
  static_routes             = each.value.static_routes
  cpe_local_identifier      = each.value.cpe_local_identifier
  cpe_local_identifier_type = each.value.cpe_local_identifier_type
  defined_tags              = each.value.defined_tags
  display_name              = each.value.display_name
  freeform_tags             = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "tunnel_configuration" {
    for_each = each.value.tunnel_configuration != null ? each.value.tunnel_configuration : []
    content {
      associated_virtual_circuits = tunnel_configuration.value.associated_virtual_circuits
      drg_route_table_id          = tunnel_configuration.value.drg_route_table_id
      oracle_tunnel_ip            = tunnel_configuration.value.oracle_tunnel_ip
    }
  }
}

