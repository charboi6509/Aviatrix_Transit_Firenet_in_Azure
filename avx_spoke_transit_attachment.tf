/* Azure Aviatrix attachements start below this line */
resource "aviatrix_spoke_transit_attachment" "avx-spoke-01-spoke-transit-att" {
  depends_on = [
    aviatrix_spoke_gateway.avx-spokegw-01,
    aviatrix_transit_gateway.avx-transitgw-01
  ]
  spoke_gw_name   = aviatrix_spoke_gateway.avx-spokegw-01.gw_name
  transit_gw_name = aviatrix_transit_gateway.avx-transitgw-01.gw_name
}

resource "aviatrix_spoke_transit_attachment" "avx-spoke-02-spoke-transit-att" {
  depends_on = [
    aviatrix_spoke_gateway.avx-spokegw-01,
    aviatrix_transit_gateway.avx-transitgw-01
  ]
  spoke_gw_name   = aviatrix_spoke_gateway.avx-spokegw-02.gw_name
  transit_gw_name = aviatrix_transit_gateway.avx-transitgw-01.gw_name
}

