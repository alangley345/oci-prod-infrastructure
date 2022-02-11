resource "oci_core_vcn" "vcn1" {
    #Required
    compartment_id = var.default_compartment

    #Optional
    cidr_blocks = var.vcn1_cidr
    display_name = var.vcn1_display_name
    dns_label = var.vcn1_dns_label
    freeform_tags = {"environment"= "prod"}
    is_ipv6enabled = true
}