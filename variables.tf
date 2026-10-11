variable "account_federation_policies_lookup" {
  description = <<EOT
Map of account_federation_policies_lookup, attributes below
Optional:
    - page_size
EOT

  type = map(object({
    page_size = optional(number)
  }))
}

