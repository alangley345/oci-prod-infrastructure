resource "oci_objectstorage_bucket" "myterraformcode" {
    #Required
    compartment_id = alangley345
    name = myterraformcode
    namespace = axplcpt6nqjo

    #Optional
    access_type = NoPublicAccess
    freeform_tags = {"environment"= "prod"}
    storage_tier = Standard
    versioning = Enabled
}