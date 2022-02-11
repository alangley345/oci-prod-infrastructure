resource "oci_objectstorage_bucket" "myterraformcode" {
    #Required"
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaa56nnp6xcveam62bavbhvjcktkumwbvqd6yewpqqeufruwukmxzlq"
    name = "myterraformcode"
    namespace = "axplcpt6nqjo"

    #Optional
    freeform_tags = {"environment"= "prod"}
}