# /* Azure VNETs start below this line */
resource "aviatrix_vpc" "vnet-spoke-01" {
  cloud_type   = 8
  account_name = var.azure_account_name
  name         = "vnet-spoke-01"
  region       = "East US 2"
  cidr         = "10.200.1.0/24"
}

resource "aviatrix_vpc" "vnet-spoke-02" {
  cloud_type   = 8
  account_name = var.azure_account_name
  name         = "vnet-spoke-02"
  cidr         = "10.200.2.0/24"
  region       = "East US 2"
}

resource "aviatrix_vpc" "vnet-transit-01" {
  cloud_type   = 8
  account_name = var.azure_account_name
  name         = "vnet-transit-01"
  cidr         = "172.16.200.0/24"
  region       = "East US 2"
}
