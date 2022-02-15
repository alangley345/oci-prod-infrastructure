resource "oci_core_subnet" "vcn1_subnet1" {
    #Required
    cidr_block = "10.40.1.0/24"
    compartment_id = var.default_compartment
    vcn_id = var.vcn1_id
}