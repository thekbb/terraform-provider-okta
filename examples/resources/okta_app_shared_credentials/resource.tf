resource "okta_app_shared_credentials" "example" {
  label                            = "Example App"
  status                           = "ACTIVE"
  button_field                     = "btn-login"
  username_field                   = "txtbox-username"
  password_field                   = "txtbox-password"
  url                              = "https://example.com/login.html"
  redirect_url                     = "https://example.com/redirect_url"
  checkbox                         = "checkbox_red"
  user_name_template               = "user.firstName"
  user_name_template_type          = "CUSTOM"
  user_name_template_suffix        = "hello"
  shared_password                  = "sharedpass"
  shared_username                  = "sharedusername"
  accessibility_self_service       = true
  accessibility_error_redirect_url = "https://example.com/redirect_url_1"
  accessibility_login_redirect_url = "https://example.com/redirect_url_2"
  auto_submit_toolbar              = true
  hide_ios                         = true
}
