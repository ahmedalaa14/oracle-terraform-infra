resource "oci_core_subnet" "vcn-public-subnet" {
  compartment_id = oci_identity_compartment.tf-compartment.id
  vcn_id         = module.vcn.vcn_id
  cidr_block     = "10.0.0.0/24"

  route_table_id    = module.vcn.ig_route_id
  display_name      = "public-subnet"
  security_list_ids = [oci_core_security_list.public-security_list.id]
}