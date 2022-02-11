variable "default_compartment" {
 type = string
 default = ""
}
variable "vcn1_cidr" {
 type = list
 default = ["10.40.0.0/16"]
}

variable "vcn1_display_name" {
 type = string
 default = "VCN 1"
}

variable "vcn1_dns_label" {
 type = string
 default = "vcn1"
}
