terraform {
  required_providers {
    fivetran = {
      source  = "fivetran/fivetran"
      version = "~> 1.0"
    }
  }
}

provider "fivetran" {
  api_key    = var.fivetran_api_key
  api_secret = var.fivetran_api_secret
}

variable "fivetran_api_key" {}
variable "fivetran_api_secret" { sensitive = true }
