/*data "aws_vpc_peering_connection" "pc" {
  vpc_id          = "dasadsads"
  peer_cidr_block = "10.0.1.0/22"
}*/

data "aws_vpc" "selected" {
  id = "dasadsads"
}
