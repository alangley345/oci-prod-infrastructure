variable "default_compartment" {
 type = string
 default = "ocid1.tenancy.oc1..aaaaaaaa56nnp6xcveam62bavbhvjcktkumwbvqd6yewpqqeufruwukmxzlq"
}

variable "vcn1_cidr" {
 type = string
 default = "10.40.0.0/16"
}

variable "vcn1_display_name" {
 type = string
 default = "VCN 1"
}

variable "vcn1_dns_label" {
 type = string
 default = "vcn1"
}
