resource "aws_acmpca_certificate_authority" "acmpca_certificate_authorities" {
  for_each = var.acmpca_certificate_authorities

  enabled                         = each.value.enabled
  key_storage_security_standard   = each.value.key_storage_security_standard
  permanent_deletion_time_in_days = each.value.permanent_deletion_time_in_days
  region                          = each.value.region
  tags                            = each.value.tags
  tags_all                        = each.value.tags_all
  type                            = each.value.type
  usage_mode                      = each.value.usage_mode

  certificate_authority_configuration {
    key_algorithm     = each.value.certificate_authority_configuration.key_algorithm
    signing_algorithm = each.value.certificate_authority_configuration.signing_algorithm
    subject {
      common_name                  = each.value.certificate_authority_configuration.subject.common_name
      country                      = each.value.certificate_authority_configuration.subject.country
      distinguished_name_qualifier = each.value.certificate_authority_configuration.subject.distinguished_name_qualifier
      generation_qualifier         = each.value.certificate_authority_configuration.subject.generation_qualifier
      given_name                   = each.value.certificate_authority_configuration.subject.given_name
      initials                     = each.value.certificate_authority_configuration.subject.initials
      locality                     = each.value.certificate_authority_configuration.subject.locality
      organization                 = each.value.certificate_authority_configuration.subject.organization
      organizational_unit          = each.value.certificate_authority_configuration.subject.organizational_unit
      pseudonym                    = each.value.certificate_authority_configuration.subject.pseudonym
      state                        = each.value.certificate_authority_configuration.subject.state
      surname                      = each.value.certificate_authority_configuration.subject.surname
      title                        = each.value.certificate_authority_configuration.subject.title
    }
  }

  dynamic "revocation_configuration" {
    for_each = each.value.revocation_configuration != null ? [each.value.revocation_configuration] : []
    content {
      dynamic "crl_configuration" {
        for_each = revocation_configuration.value.crl_configuration != null ? [revocation_configuration.value.crl_configuration] : []
        content {
          custom_cname       = crl_configuration.value.custom_cname
          custom_path        = crl_configuration.value.custom_path
          enabled            = crl_configuration.value.enabled
          expiration_in_days = crl_configuration.value.expiration_in_days
          s3_bucket_name     = crl_configuration.value.s3_bucket_name
          s3_object_acl      = crl_configuration.value.s3_object_acl
        }
      }
      dynamic "ocsp_configuration" {
        for_each = revocation_configuration.value.ocsp_configuration != null ? [revocation_configuration.value.ocsp_configuration] : []
        content {
          enabled           = ocsp_configuration.value.enabled
          ocsp_custom_cname = ocsp_configuration.value.ocsp_custom_cname
        }
      }
    }
  }
}

