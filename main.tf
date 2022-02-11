provider "oci" {
  region  = "ca-montreal-1"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "prod/base_state.tf"
    region = "ca-montreal-1"
    endpoint = "https://axplcpt6nqjo.compat.objectstorage.ca-montreal-1.oraclecloud.com"
    shared_credentials_file     = "~/.terraform/credentials"
    skip_region_validation      = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}