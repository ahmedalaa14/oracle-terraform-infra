resource "oci_core_instance" "ubuntu_instance" {
  availability_domain = data.oci_identity_availability_domains.ad.availability_domains[0].name
  compartment_id      = oci_identity_compartment.tf-compartment.id
  shape               = "VM.Standard2.1"
  subnet_id           = oci_core_subnet.vcn-public-subnet.id
  display_name        = "ubuntu-instance"
  image               = "Canonical-Ubuntu-20.04-2021.07.20-0"
  metadata = {
    ssh_authorized_keys = file("~/.ssh/id_rsa.pub")
  }
  timeouts {
    create = "30m"
  }
}