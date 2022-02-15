resource "oci_core_internet_gateway" "vcn1_igw" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = var.vcn_id1

    #Optional
    enabled = true
    display_name = "VCN1 IGW"
    freeform_tags = {"environment"= "prod"}
}