data "oci_identity_availability_domains" "ad" {
  compartment_id = oci_identity_compartment.tf-compartment.id
}