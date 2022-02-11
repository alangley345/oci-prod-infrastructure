resource "oci_core_internet_gateway" "test_internet_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    #Optional
    enabled = var.internet_gateway_enabled
    display_name = var.internet_gateway_display_name
    enabled = var.internet_gateway_enabled
    freeform_tags = {"environment"= "prod"}
}