provider "tetration" {
  api_key                  = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  api_secret               = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  api_url                  = "https://ignwpov.tetrationpreview.com"
  disable_tls_verification = false
}

resource "tetration_user" "user" {
  email           = "lschoen@ignw.io"
  first_name      = "Levi"
  last_name       = "Schoen"
  app_scope_id    = "5ce71503497d4f2c23af85b7"
  role_ids        = ["5ce71507755f0267680224af"]
  enable_existing = true
}
