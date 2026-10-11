output "account_federation_policies_lookup_page_size" {
  description = "Map of page_size values across all account_federation_policies_lookup, keyed the same as var.account_federation_policies_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_account_federation_policies.account_federation_policies_lookup : k => v.page_size if v.page_size != null }
}
output "account_federation_policies_lookup_policies" {
  description = "Map of policies values across all account_federation_policies_lookup, keyed the same as var.account_federation_policies_lookup except keys with no policies are omitted"
  value       = { for k, v in data.databricks_account_federation_policies.account_federation_policies_lookup : k => v.policies if v.policies != null && length(v.policies) > 0 }
}

