provider "tetration" {
  api_key                  = "70b1834a4ae948c9b55940803d00db8d"
  api_secret               = "6087d599981cd62734c5ab2d36352c834af66f75"
  api_url                  = "https://ignwpov.tetrationpreview.com"
  disable_tls_verification = false
}

resource "tetration_filter" "filter" {
  name         = "Terraform created filter"
  query        = <<EOF
            {
               "type": "and",
               "filters": [
                  {
                     "field": "vrf_id",
                     "type": "eq",
                     "value": 700056
                  },
                  {
                     "type": "or",
                     "filters": [
                        {
                           "field": "ip",
                           "type": "eq",
                           "value": "10.254.252.43"
                        },
                        {
                           "field": "ip",
                           "type": "eq",
                           "value": "10.254.252.51"
                        },
                        {
                           "field": "ip",
                           "type": "eq",
                           "value": "10.254.252.52"
                        }
                     ]
                  }
               ]
            }
          EOF
  app_scope_id = "5ed6890c497d4f55eb5c585c"
  primary      = true
  public       = false
}
