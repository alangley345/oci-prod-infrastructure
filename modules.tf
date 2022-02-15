#obj buckets
module "obj" {
 source = "./obj-storage"

}

#virtual cloud networks
module "vcn" {
 source = "./vcn"

}

#virtual cloud networks
module "igw" {
 source = "./igw"
 
 vcn1_id = module.vcn.vcn1_id
 comparment_id = var.default_compartment
}