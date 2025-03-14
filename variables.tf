variable "tenancy_ocid" {
    description = "The OCID of the tenancy."
    default = "ocid1.tenancy.oc1..aaaaaaaawx6pbtjldf6cnewngzjvcuermrwrwezyymibrv7yzx6wdrbk7vza"
  
}

variable "user_ocid" {
    description = "The OCID of the user."
    default = "ocid1.user.oc1..aaaaaaaa3q"
  
}

variable "private_key_path" {
    description = "The path to the private key."
    default = "~/ahmedalaa/.oci/oci_api_key.pem"
  
}

variable "fingerprint" {
    description = "The fingerprint of the public key."
    default = "a1:2b:3c:4d:5e:6f:7g:8h:9i:0j:1k:2l:3m:4n:5o"
  
}

variable "region" {
    description = "The region to create resources."
    default = "me-abudhabi-1"
  
}