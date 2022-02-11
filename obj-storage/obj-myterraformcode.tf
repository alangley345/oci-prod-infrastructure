resource "oci_objectstorage_bucket" "myterraformcode" {
    #Required
    compartment_id = alangley345
    name = myterraformcode
    namespace = axplcpt6nqjo

    #Optional
    freeform_tags = {"environment"= "prod"}
}