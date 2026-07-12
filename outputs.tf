output "source_control_tokens_id" {
  description = "Map of id values across all source_control_tokens, keyed the same as var.source_control_tokens"
  value       = { for k, v in azurerm_source_control_token.source_control_tokens : k => v.id }
}
output "source_control_tokens_token" {
  description = "Map of token values across all source_control_tokens, keyed the same as var.source_control_tokens"
  value       = { for k, v in azurerm_source_control_token.source_control_tokens : k => v.token }
  sensitive   = true
}
output "source_control_tokens_token_secret" {
  description = "Map of token_secret values across all source_control_tokens, keyed the same as var.source_control_tokens"
  value       = { for k, v in azurerm_source_control_token.source_control_tokens : k => v.token_secret }
  sensitive   = true
}
output "source_control_tokens_type" {
  description = "Map of type values across all source_control_tokens, keyed the same as var.source_control_tokens"
  value       = { for k, v in azurerm_source_control_token.source_control_tokens : k => v.type }
}

