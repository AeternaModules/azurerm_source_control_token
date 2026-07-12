data "azurerm_key_vault_secret" "token" {
  for_each     = { for k, v in var.source_control_tokens : k => v if v.token_key_vault_id != null && v.token_key_vault_secret_name != null }
  name         = each.value.token_key_vault_secret_name
  key_vault_id = each.value.token_key_vault_id
}
data "azurerm_key_vault_secret" "token_secret" {
  for_each     = { for k, v in var.source_control_tokens : k => v if v.token_secret_key_vault_id != null && v.token_secret_key_vault_secret_name != null }
  name         = each.value.token_secret_key_vault_secret_name
  key_vault_id = each.value.token_secret_key_vault_id
}
resource "azurerm_source_control_token" "source_control_tokens" {
  for_each = var.source_control_tokens

  token        = each.value.token != null ? each.value.token : try(data.azurerm_key_vault_secret.token[each.key].value, null)
  type         = each.value.type
  token_secret = each.value.token_secret != null ? each.value.token_secret : try(data.azurerm_key_vault_secret.token_secret[each.key].value, null)
}

