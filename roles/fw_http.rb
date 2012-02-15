name "fw_https"
description "Firewall rules for http"
override_attributes(
  "firewall" => {
    "rules" => [
      {"https" => {
          "port" => "80"
        }
      }
    ]
  }
  )
