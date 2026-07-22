terraform {
  required_providers {
    fivetran = {
      source  = "fivetran/fivetran"
      version = "~> 1.0"
    }
  }
  # Local state for now — no backend block means Terraform stores
  # state on the machine running it. Fine for local/CI testing only;
  # switch to a real remote backend (S3/GCS/Azure/Terraform Cloud)
  # before using this for anything persistent.
}

provider "fivetran" {
  api_key    = var.fivetran_api_key
  api_secret = var.fivetran_api_secret
}

variable "fivetran_api_key" {}
variable "fivetran_api_secret" { sensitive = true }
