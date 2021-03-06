resource "oci_core_internet_gateway" "vcn1_igw" {
    #Required
    compartment_id = var.default_compartment
    vcn_id = var.vcn1_id

    #Optional
    enabled = true
    display_name = "VCN1 IGW"
    freeform_tags = {"environment"= "prod"}
}