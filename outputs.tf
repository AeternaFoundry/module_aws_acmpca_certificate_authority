output "acmpca_certificate_authorities_id" {
  description = "Map of id values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "acmpca_certificate_authorities_arn" {
  description = "Map of arn values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "acmpca_certificate_authorities_certificate" {
  description = "Map of certificate values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
}
output "acmpca_certificate_authorities_certificate_authority_configuration" {
  description = "Map of certificate_authority_configuration values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => one(v.certificate_authority_configuration) if v.certificate_authority_configuration != null && length(v.certificate_authority_configuration) > 0 }
}
output "acmpca_certificate_authorities_certificate_chain" {
  description = "Map of certificate_chain values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.certificate_chain if v.certificate_chain != null && length(v.certificate_chain) > 0 }
}
output "acmpca_certificate_authorities_certificate_signing_request" {
  description = "Map of certificate_signing_request values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.certificate_signing_request if v.certificate_signing_request != null && length(v.certificate_signing_request) > 0 }
}
output "acmpca_certificate_authorities_enabled" {
  description = "Map of enabled values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.enabled if v.enabled != null }
}
output "acmpca_certificate_authorities_key_storage_security_standard" {
  description = "Map of key_storage_security_standard values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.key_storage_security_standard if v.key_storage_security_standard != null && length(v.key_storage_security_standard) > 0 }
}
output "acmpca_certificate_authorities_not_after" {
  description = "Map of not_after values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.not_after if v.not_after != null && length(v.not_after) > 0 }
}
output "acmpca_certificate_authorities_not_before" {
  description = "Map of not_before values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.not_before if v.not_before != null && length(v.not_before) > 0 }
}
output "acmpca_certificate_authorities_permanent_deletion_time_in_days" {
  description = "Map of permanent_deletion_time_in_days values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.permanent_deletion_time_in_days if v.permanent_deletion_time_in_days != null }
}
output "acmpca_certificate_authorities_region" {
  description = "Map of region values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.region if v.region != null && length(v.region) > 0 }
}
output "acmpca_certificate_authorities_revocation_configuration" {
  description = "Map of revocation_configuration values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => one(v.revocation_configuration) if v.revocation_configuration != null && length(v.revocation_configuration) > 0 }
}
output "acmpca_certificate_authorities_serial" {
  description = "Map of serial values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.serial if v.serial != null && length(v.serial) > 0 }
}
output "acmpca_certificate_authorities_tags" {
  description = "Map of tags values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "acmpca_certificate_authorities_tags_all" {
  description = "Map of tags_all values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "acmpca_certificate_authorities_type" {
  description = "Map of type values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.type if v.type != null && length(v.type) > 0 }
}
output "acmpca_certificate_authorities_usage_mode" {
  description = "Map of usage_mode values across all acmpca_certificate_authorities, keyed the same as var.acmpca_certificate_authorities"
  value       = { for k, v in aws_acmpca_certificate_authority.acmpca_certificate_authorities : k => v.usage_mode if v.usage_mode != null && length(v.usage_mode) > 0 }
}

