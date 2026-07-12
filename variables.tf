variable "source_control_tokens" {
  description = <<EOT
Map of source_control_tokens, attributes below
Required:
    - token
    - token_key_vault_id (alternative to token - read from Key Vault instead)
    - token_key_vault_secret_name (alternative to token - read from Key Vault instead)
    - type
Optional:
    - token_secret
    - token_secret_key_vault_id (alternative to token_secret - read from Key Vault instead)
    - token_secret_key_vault_secret_name (alternative to token_secret - read from Key Vault instead)
EOT

  type = map(object({
    token                              = string
    token_key_vault_id                 = optional(string)
    token_key_vault_secret_name        = optional(string)
    type                               = string
    token_secret                       = optional(string)
    token_secret_key_vault_id          = optional(string)
    token_secret_key_vault_secret_name = optional(string)
  }))
}

