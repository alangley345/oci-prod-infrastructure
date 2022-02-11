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
 
 vcn_id1 = module.vcn.vcn1_id
}