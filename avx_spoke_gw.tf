/* Azure located Aviatrix Spoke Gateways start below this line */
resource "aviatrix_spoke_gateway" "avx-spokegw-01" {
  depends_on = [
    aviatrix_vpc.vnet-spoke-01
  ]
  gw_name                           = "avx-spokegw-01"
  vpc_id                            = aviatrix_vpc.vnet-spoke-01.vpc_id
  cloud_type                        = 8
  vpc_reg                           = "East US 2"
  gw_size                           = var.azure_spoke_gw_size
  account_name                      = var.azure_account_name
  subnet                            = aviatrix_vpc.vnet-spoke-01.public_subnets[0].cidr
  manage_transit_gateway_attachment = false
  ha_subnet                         = aviatrix_vpc.vnet-spoke-01.public_subnets[0].cidr
  ha_gw_size                        = var.azure_spoke_gw_size
}

resource "aviatrix_spoke_gateway" "avx-spokegw-02" {
  depends_on = [
    aviatrix_vpc.vnet-spoke-02
  ]
  gw_name                           = "avx-spokegw-02"
  vpc_id                            = aviatrix_vpc.vnet-spoke-02.vpc_id
  cloud_type                        = 8
  vpc_reg                           = "East US 2"
  gw_size                           = var.azure_spoke_gw_size
  account_name                      = var.azure_account_name
  subnet                            = aviatrix_vpc.vnet-spoke-02.public_subnets[0].cidr
  manage_transit_gateway_attachment = false
  ha_subnet                         = aviatrix_vpc.vnet-spoke-02.public_subnets[0].cidr
  ha_gw_size                        = var.azure_spoke_gw_size
}
