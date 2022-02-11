resource "oci_core_internet_gateway" "test_internet_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = vcn1_id

    #Optional
    enabled = true
    display_name = "VCN1 IGW"
    freeform_tags = {"environment"= "prod"}
}