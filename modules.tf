#obj buckets
module "obj" {
 source = "./obj-storage"

 default_compartment = var.default_compartment
}

#virtual cloud networks
module "vcn" {
 source = "./vcn"

 default_compartment = var.default_compartment
}