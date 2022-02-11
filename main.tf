provider "oci" {
  region  = "ca-montreal-1"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "prod/base_state.tf"
    region = "ca-montreal-1"
  }
}