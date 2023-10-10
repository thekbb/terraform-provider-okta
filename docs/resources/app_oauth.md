---
page_title: "Resource: okta_app_oauth"
description: |-
  
---

# Resource: okta_app_oauth





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `label` (String) Pretty name of app.
- `type` (String) The type of client application.

### Optional

- `accessibility_error_redirect_url` (String) Custom error page URL
- `accessibility_login_redirect_url` (String) Custom login page URL
- `accessibility_self_service` (Boolean) Enable self service
- `admin_note` (String) Application notes for admins.
- `app_links_json` (String) Displays specific appLinks for the app
- `app_settings_json` (String) Application settings in JSON format
- `authentication_policy` (String) Id of this apps authentication policy
- `auto_key_rotation` (Boolean) Requested key rotation mode.
- `auto_submit_toolbar` (Boolean) Display auto submit toolbar
- `client_basic_secret` (String, Sensitive) OAuth client secret key, this can be set when token_endpoint_auth_method is client_secret_basic.
- `client_id` (String) OAuth client ID. If set during creation, app is created with this id.
- `client_uri` (String) URI to a web page providing information about the client.
- `consent_method` (String) *Early Access Property*. Indicates whether user consent is required or implicit. Valid values: REQUIRED, TRUSTED. Default value is TRUSTED
- `enduser_note` (String) Application notes for end users.
- `grant_types` (Set of String) List of OAuth 2.0 grant types. Conditional validation params found here https://developer.okta.com/docs/api/resources/apps#credentials-settings-details. Defaults to minimum requirements per app type.
- `groups_claim` (Block Set, Max: 1) Groups claim for an OpenID Connect client application (argument is ignored when API auth is done with OAuth 2.0 credentials) (see [below for nested schema](#nestedblock--groups_claim))
- `hide_ios` (Boolean) Do not display application icon on mobile app
- `hide_web` (Boolean) Do not display application icon to users
- `implicit_assignment` (Boolean) *Early Access Property*. Enable Federation Broker Mode.
- `issuer_mode` (String) *Early Access Property*. Indicates whether the Okta Authorization Server uses the original Okta org domain URL or a custom domain URL as the issuer of ID token for this client.
- `jwks` (Block List) (see [below for nested schema](#nestedblock--jwks))
- `jwks_uri` (String) URL reference to JWKS
- `login_mode` (String) The type of Idp-Initiated login that the client supports, if any
- `login_scopes` (Set of String) List of scopes to use for the request
- `login_uri` (String) URI that initiates login.
- `logo` (String) Local path to logo of the application.
- `logo_uri` (String) URI that references a logo for the client.
- `omit_secret` (Boolean) This tells the provider not to persist the application's secret to state. If this is ever changes from true => false your app will be recreated.
- `pkce_required` (Boolean) Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object
- `policy_uri` (String) URI to web page providing client policy document.
- `post_logout_redirect_uris` (Set of String) List of URIs for redirection after logout. Note: see okta_app_oauth_post_logout_redirect_uri for appending to this list in a decentralized way.
- `profile` (String) Custom JSON that represents an OAuth application's profile
- `redirect_uris` (List of String) List of URIs for use in the redirect-based flow. This is required for all application types except service. Note: see okta_app_oauth_redirect_uri for appending to this list in a decentralized way.
- `refresh_token_leeway` (Number) *Early Access Property* Grace period for token rotation
- `refresh_token_rotation` (String) *Early Access Property* Refresh token rotation behavior
- `response_types` (Set of String) List of OAuth 2.0 response type strings.
- `status` (String) Status of application.
- `timeouts` (Block, Optional) (see [below for nested schema](#nestedblock--timeouts))
- `token_endpoint_auth_method` (String) Requested authentication method for the token endpoint.
- `tos_uri` (String) URI to web page providing client tos (terms of service).
- `user_name_template` (String) Username template
- `user_name_template_push_status` (String) Push username on update
- `user_name_template_suffix` (String) Username template suffix
- `user_name_template_type` (String) Username template type
- `wildcard_redirect` (String) *Early Access Property*. Indicates if the client is allowed to use wildcard matching of redirect_uris

### Read-Only

- `client_secret` (String, Sensitive) OAuth client secret key. This will be in plain text in your statefile unless you set omit_secret above.
- `id` (String) The ID of this resource.
- `logo_url` (String) URL of the application's logo
- `name` (String) Name of the app.
- `sign_on_mode` (String) Sign on mode of application.

<a id="nestedblock--groups_claim"></a>
### Nested Schema for `groups_claim`

Required:

- `name` (String) Name of the claim that will be used in the token.
- `type` (String) Groups claim type.
- `value` (String) Value of the claim. Can be an Okta Expression Language statement that evaluates at the time the token is minted.

Optional:

- `filter_type` (String) Groups claim filter. Can only be set if type is FILTER.

Read-Only:

- `issuer_mode` (String) Issuer mode inherited from OAuth App


<a id="nestedblock--jwks"></a>
### Nested Schema for `jwks`

Required:

- `kid` (String) Key ID
- `kty` (String) Key type

Optional:

- `e` (String) RSA Exponent
- `n` (String) RSA Modulus


<a id="nestedblock--timeouts"></a>
### Nested Schema for `timeouts`

Optional:

- `create` (String)
- `read` (String)
- `update` (String)

