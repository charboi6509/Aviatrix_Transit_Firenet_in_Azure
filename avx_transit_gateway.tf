/* Azure located Aviatrix Transit Gateways start below this line */
resource "aviatrix_transit_gateway" "avx-transitgw-01" {
  depends_on = [
    aviatrix_vpc.vnet-transit-01
  ]
  gw_name                = "avx-transitgw-01"
  vpc_id                 = aviatrix_vpc.vnet-transit-01.vpc_id
  cloud_type             = 8
  vpc_reg                = "East US 2"
  connected_transit      = true
  gw_size                = var.azure_firenet_gw_size
  account_name           = var.azure_account_name
  subnet                 = aviatrix_vpc.vnet-transit-01.public_subnets[0].cidr
  ha_subnet              = aviatrix_vpc.vnet-transit-01.public_subnets[0].cidr
  ha_gw_size             = var.azure_firenet_gw_size
  enable_transit_firenet = true
}