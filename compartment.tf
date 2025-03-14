resource "oci_identity_compartment" "tf-compartment" {
  compartment_id = var.tenancy_ocid
  name           = "tf-compartment"
  description    = "tf-compartment"
}