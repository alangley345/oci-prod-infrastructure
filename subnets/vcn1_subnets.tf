resource "oci_core_subnet" "vcn1_subnet1" {
    #Required
    cidr_block = "10.40.1.0/24"
    compartment_id = ocid1.vcn.oc1.ca-montreal-1.amaaaaaa4q67ctyahntpegh2aipdmj76rv44hajlnn6x4anbjdgicaghtifa
    vcn_id = var.vcn1_id

    display_name = "Control Servers"
    freeform_tags = {"environment"= "prod"}
    ipv6cidr_block = "2603:c023:4002:600::/64"
}