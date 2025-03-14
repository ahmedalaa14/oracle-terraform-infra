resource "oci_core_security_list" "public-security_list" {

  compartment_id = oci_identity_compartment.tf-compartment.id
  vcn_id         = module.vcn.vcn_id

  display_name = "public-security-list"

  egress_security_rules {
    stateless        = false
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
  }
  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol    = "6"
    tcp_options {
      destination_port_range {
        max = 22
        min = 22
      }
    }
    ingress_security_rules {
      stateless   = false
      source      = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol    = "1"

      icmp_options {
        type = 3
        code = 4
      }
    }

    ingress_security_rules {
      stateless   = false
      source      = "10.0.0.0/16"
      source_type = "CIDR_BLOCK"
      protocol    = "1"

      icmp_options {
        type = 3
      }
    }
  }
}