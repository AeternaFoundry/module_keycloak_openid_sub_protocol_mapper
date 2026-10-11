resource "keycloak_openid_sub_protocol_mapper" "openid_sub_protocol_mappers" {
  for_each = var.openid_sub_protocol_mappers

  name                       = each.value.name
  realm_id                   = each.value.realm_id
  add_to_access_token        = each.value.add_to_access_token
  add_to_token_introspection = each.value.add_to_token_introspection
  client_id                  = each.value.client_id
  client_scope_id            = each.value.client_scope_id
}

