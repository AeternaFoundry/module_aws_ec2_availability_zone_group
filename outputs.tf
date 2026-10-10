output "ec2_availability_zone_groups_id" {
  description = "Map of id values across all ec2_availability_zone_groups, keyed the same as var.ec2_availability_zone_groups"
  value       = { for k, v in aws_ec2_availability_zone_group.ec2_availability_zone_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_availability_zone_groups_group_name" {
  description = "Map of group_name values across all ec2_availability_zone_groups, keyed the same as var.ec2_availability_zone_groups"
  value       = { for k, v in aws_ec2_availability_zone_group.ec2_availability_zone_groups : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "ec2_availability_zone_groups_opt_in_status" {
  description = "Map of opt_in_status values across all ec2_availability_zone_groups, keyed the same as var.ec2_availability_zone_groups"
  value       = { for k, v in aws_ec2_availability_zone_group.ec2_availability_zone_groups : k => v.opt_in_status if v.opt_in_status != null && length(v.opt_in_status) > 0 }
}
output "ec2_availability_zone_groups_region" {
  description = "Map of region values across all ec2_availability_zone_groups, keyed the same as var.ec2_availability_zone_groups"
  value       = { for k, v in aws_ec2_availability_zone_group.ec2_availability_zone_groups : k => v.region if v.region != null && length(v.region) > 0 }
}

