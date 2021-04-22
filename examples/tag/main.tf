provider "tetration" {
  api_key                  = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  api_secret               = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  api_url                  = "https://ignwpov.tetrationpreview.com/"
  disable_tls_verification = false
}

resource "tetration_tag" "tag" {
  tenant_name = "Ignwpov"
  ip          = "10.0.0.1"
  attributes = {
    Environment = "test"
    Datacenter  = "aws"
    app_name    = "product-service"
  }
}
