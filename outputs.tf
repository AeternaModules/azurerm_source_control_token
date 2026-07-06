output "source_control_tokens" {
  description = "All source_control_token resources"
  value       = azurerm_source_control_token.source_control_tokens
  sensitive   = true
}
output "source_control_tokens_token" {
  description = "List of token values across all source_control_tokens"
  value       = [for k, v in azurerm_source_control_token.source_control_tokens : v.token]
  sensitive   = true
}
output "source_control_tokens_token_secret" {
  description = "List of token_secret values across all source_control_tokens"
  value       = [for k, v in azurerm_source_control_token.source_control_tokens : v.token_secret]
  sensitive   = true
}
output "source_control_tokens_type" {
  description = "List of type values across all source_control_tokens"
  value       = [for k, v in azurerm_source_control_token.source_control_tokens : v.type]
}

