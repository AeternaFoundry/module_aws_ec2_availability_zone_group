variable "ec2_availability_zone_groups" {
  description = <<EOT
Map of ec2_availability_zone_groups, attributes below
Required:
    - group_name
    - opt_in_status
Optional:
    - region
EOT

  type = map(object({
    group_name    = string
    opt_in_status = string
    region        = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

