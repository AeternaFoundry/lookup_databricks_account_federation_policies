data "databricks_account_federation_policies" "account_federation_policies_lookup" {
  for_each = var.account_federation_policies_lookup

  page_size = each.value.page_size
}

