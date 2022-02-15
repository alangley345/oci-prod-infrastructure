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
 default_compartment = var.default_compartment
}

#vSubnets within VCNs
module "subnets" {
 source = "./subnets"
 
 vcn1_id = module.vcn.vcn1_id
 default_compartment = var.default_compartment
}

#virtual cloud networks
module "instances" {
 source = "./subnets"
 
 vcn1_id = module.vcn.vcn1_id
 default_compartment = var.default_compartment
 vcn1_subnet1 = module.subnets.vcn1_subnet1
 
}