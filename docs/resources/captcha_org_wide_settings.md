---
page_title: "Resource: okta_captcha_org_wide_settings"
description: |-
  Manages Org-Wide CAPTCHA settings
  ~> WARNING: This feature is only available as a part of the Identity Engine. Contact support mailto:dev-inquiries@okta.com for further information.
  This resource allows you to configure which parts of the authentication flow requires users to pass the CAPTCHA logic.
  CAPTCHA org-wide settings can be disabled by unsetting 'captchaid' and 'enabledfor'.
---

# Resource: okta_captcha_org_wide_settings

Manages Org-Wide CAPTCHA settings
~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
This resource allows you to configure which parts of the authentication flow requires users to pass the CAPTCHA logic.
CAPTCHA org-wide settings can be disabled by unsetting 'captcha_id' and 'enabled_for'.

## Example Usage

```terraform
resource "okta_captcha" "example" {
  name       = "My CAPTCHA"
  type       = "HCAPTCHA"
  site_key   = "some_key"
  secret_key = "some_secret_key"
}

resource "okta_captcha_org_wide_settings" "example" {
  captcha_id  = okta_captcha.test.id
  enabled_for = ["SSR"]
}

### The following example disables org-wide CAPTCHA.

resource "okta_captcha" "example" {
  name       = "My CAPTCHA"
  type       = "HCAPTCHA"
  site_key   = "some_key"
  secret_key = "some_secret_key"
}

resource "okta_captcha_org_wide_settings" "example" {
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Optional

- `captcha_id` (String) Array of pages that have CAPTCHA enabled. Valid values: `SSR`, `SSPR` and `SIGN_IN`.
- `enabled_for` (Set of String) Set of pages that have CAPTCHA enabled

### Read-Only

- `id` (String) The ID of this resource.

## Import

Import is supported using the following syntax:

```shell
terraform import okta_captcha_org_wide_settings.example _
```
