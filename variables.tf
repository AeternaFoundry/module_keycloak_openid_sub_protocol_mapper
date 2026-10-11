variable "openid_sub_protocol_mappers" {
  description = <<EOT
Map of openid_sub_protocol_mappers, attributes below
Required:
    - name
    - realm_id
Optional:
    - add_to_access_token
    - add_to_token_introspection
    - client_id
    - client_scope_id
EOT

  type = map(object({
    name                       = string
    realm_id                   = string
    add_to_access_token        = optional(bool)
    add_to_token_introspection = optional(bool)
    client_id                  = optional(string)
    client_scope_id            = optional(string)
  }))
}

