variable "core_ipsecs" {
  description = <<EOT
Map of core_ipsecs, attributes below
Required:
    - compartment_id
    - cpe_id
    - drg_id
    - static_routes
Optional:
    - cpe_local_identifier
    - cpe_local_identifier_type
    - defined_tags
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - tunnel_configuration (block):
        - associated_virtual_circuits (optional)
        - drg_route_table_id (optional)
        - oracle_tunnel_ip (optional)
EOT

  type = map(object({
    compartment_id            = string
    cpe_id                    = string
    drg_id                    = string
    static_routes             = list(string)
    cpe_local_identifier      = optional(string)
    cpe_local_identifier_type = optional(string)
    defined_tags              = optional(map(string))
    display_name              = optional(string)
    freeform_tags             = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    tunnel_configuration = optional(list(object({
      associated_virtual_circuits = optional(list(string))
      drg_route_table_id          = optional(string)
      oracle_tunnel_ip            = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_ipsecs : (
        v.tunnel_configuration == null || (length(v.tunnel_configuration) <= 2)
      )
    ])
    error_message = "Each tunnel_configuration list must contain at most 2 items"
  }
}

