#obj buckets
module "obj" {
 source = "./obj-storage"

 var.default_compartment = var.default_compartment
}

#virtual cloud networks
module "vcn" {
 source = "./vcn"

 var.default_compartment = var.default_compartment
}