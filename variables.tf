variable "acmpca_certificate_authorities" {
  description = <<EOT
Map of acmpca_certificate_authorities, attributes below
Required:
    - certificate_authority_configuration (block):
        - key_algorithm (required)
        - signing_algorithm (required)
        - subject (required, block):
            - common_name (optional)
            - country (optional)
            - distinguished_name_qualifier (optional)
            - generation_qualifier (optional)
            - given_name (optional)
            - initials (optional)
            - locality (optional)
            - organization (optional)
            - organizational_unit (optional)
            - pseudonym (optional)
            - state (optional)
            - surname (optional)
            - title (optional)
Optional:
    - enabled
    - key_storage_security_standard
    - permanent_deletion_time_in_days
    - region
    - tags
    - tags_all
    - type
    - usage_mode
    - revocation_configuration (block):
        - crl_configuration (optional, block):
            - custom_cname (optional)
            - custom_path (optional)
            - enabled (optional)
            - expiration_in_days (optional)
            - s3_bucket_name (optional)
            - s3_object_acl (optional)
        - ocsp_configuration (optional, block):
            - enabled (required)
            - ocsp_custom_cname (optional)
EOT

  type = map(object({
    enabled                         = optional(bool)
    key_storage_security_standard   = optional(string)
    permanent_deletion_time_in_days = optional(number)
    region                          = optional(string)
    tags                            = optional(map(string))
    tags_all                        = optional(map(string))
    type                            = optional(string)
    usage_mode                      = optional(string)
    certificate_authority_configuration = object({
      key_algorithm     = string
      signing_algorithm = string
      subject = object({
        common_name                  = optional(string)
        country                      = optional(string)
        distinguished_name_qualifier = optional(string)
        generation_qualifier         = optional(string)
        given_name                   = optional(string)
        initials                     = optional(string)
        locality                     = optional(string)
        organization                 = optional(string)
        organizational_unit          = optional(string)
        pseudonym                    = optional(string)
        state                        = optional(string)
        surname                      = optional(string)
        title                        = optional(string)
      })
    })
    revocation_configuration = optional(object({
      crl_configuration = optional(object({
        custom_cname       = optional(string)
        custom_path        = optional(string)
        enabled            = optional(bool)
        expiration_in_days = optional(number)
        s3_bucket_name     = optional(string)
        s3_object_acl      = optional(string)
      }))
      ocsp_configuration = optional(object({
        enabled           = bool
        ocsp_custom_cname = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.common_name == null || (length(v.certificate_authority_configuration.subject.common_name) >= 0 && length(v.certificate_authority_configuration.subject.common_name) <= 64)
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.country == null || (length(v.certificate_authority_configuration.subject.country) >= 0 && length(v.certificate_authority_configuration.subject.country) <= 2)
      )
    ])
    error_message = "must be between 0 and 2 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.distinguished_name_qualifier == null || (length(v.certificate_authority_configuration.subject.distinguished_name_qualifier) >= 0 && length(v.certificate_authority_configuration.subject.distinguished_name_qualifier) <= 64)
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.generation_qualifier == null || (length(v.certificate_authority_configuration.subject.generation_qualifier) >= 0 && length(v.certificate_authority_configuration.subject.generation_qualifier) <= 3)
      )
    ])
    error_message = "must be between 0 and 3 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.given_name == null || (length(v.certificate_authority_configuration.subject.given_name) >= 0 && length(v.certificate_authority_configuration.subject.given_name) <= 16)
      )
    ])
    error_message = "must be between 0 and 16 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.initials == null || (length(v.certificate_authority_configuration.subject.initials) >= 0 && length(v.certificate_authority_configuration.subject.initials) <= 5)
      )
    ])
    error_message = "must be between 0 and 5 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.locality == null || (length(v.certificate_authority_configuration.subject.locality) >= 0 && length(v.certificate_authority_configuration.subject.locality) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.organization == null || (length(v.certificate_authority_configuration.subject.organization) >= 0 && length(v.certificate_authority_configuration.subject.organization) <= 64)
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.organizational_unit == null || (length(v.certificate_authority_configuration.subject.organizational_unit) >= 0 && length(v.certificate_authority_configuration.subject.organizational_unit) <= 64)
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.pseudonym == null || (length(v.certificate_authority_configuration.subject.pseudonym) >= 0 && length(v.certificate_authority_configuration.subject.pseudonym) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.surname == null || (length(v.certificate_authority_configuration.subject.surname) >= 0 && length(v.certificate_authority_configuration.subject.surname) <= 40)
      )
    ])
    error_message = "must be between 0 and 40 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.certificate_authority_configuration.subject.title == null || (length(v.certificate_authority_configuration.subject.title) >= 0 && length(v.certificate_authority_configuration.subject.title) <= 64)
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.revocation_configuration == null || (v.revocation_configuration.crl_configuration == null || (v.revocation_configuration.crl_configuration.custom_cname == null || (length(v.revocation_configuration.crl_configuration.custom_cname) >= 0 && length(v.revocation_configuration.crl_configuration.custom_cname) <= 253)))
      )
    ])
    error_message = "must be between 0 and 253 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.revocation_configuration == null || (v.revocation_configuration.crl_configuration == null || (v.revocation_configuration.crl_configuration.custom_path == null || ((length(v.revocation_configuration.crl_configuration.custom_path) >= 0 && length(v.revocation_configuration.crl_configuration.custom_path) <= 253) && (can(regex("^[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*$", v.revocation_configuration.crl_configuration.custom_path))))))
      )
    ])
    error_message = "all of: must be between 0 and 253 characters; must match pattern [-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.revocation_configuration == null || (v.revocation_configuration.crl_configuration == null || (v.revocation_configuration.crl_configuration.expiration_in_days == null || (v.revocation_configuration.crl_configuration.expiration_in_days >= 1 && v.revocation_configuration.crl_configuration.expiration_in_days <= 5000)))
      )
    ])
    error_message = "must be between 1 and 5000"
  }
  validation {
    condition = alltrue([
      for k, v in var.acmpca_certificate_authorities : (
        v.revocation_configuration == null || (v.revocation_configuration.ocsp_configuration == null || (v.revocation_configuration.ocsp_configuration.ocsp_custom_cname == null || (length(v.revocation_configuration.ocsp_configuration.ocsp_custom_cname) >= 0 && length(v.revocation_configuration.ocsp_configuration.ocsp_custom_cname) <= 253)))
      )
    ])
    error_message = "must be between 0 and 253 characters"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

