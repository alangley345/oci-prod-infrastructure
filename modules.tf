#obj buckets
module "obj" {
 source = "./obj-storage"

 compartment_id = var.default_compartment
}

#virtual cloud networks
module "vcn" {
 source = "./vcn"

 compartment_id = var.default_compartment
}