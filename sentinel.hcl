# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "tfplan-functions" {
    source = "common-functions/tfplan-functions.sentinel"
}

policy "managed-disk-encryption-is-enabled" {
  source = "./policies/managed-disk-encryption-is-enabled/managed-disk-encryption-is-enabled.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "only-approved-extensions-are-installed" {
  source = "./policies/only-approved-extensions-are-installed/only-approved-extensions-are-installed.sentinel"
  enforcement_level = "advisory"
}

policy "deny-extensions" {
  source = "./policies/deny-extensions/deny-extensions.sentinel"
  enforcement_level = "hard-mandatory"
}
