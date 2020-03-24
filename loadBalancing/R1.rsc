# mar/24/2020 04:52:59 by RouterOS 6.46.4
# software id = 
#
#
#
/interface ethernet
set [ find default-name=ether1 ] comment=WAN1
set [ find default-name=ether2 ] comment=WAN2
set [ find default-name=ether3 ] comment=LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip address
add address=10.1.1.1/30 interface=ether1 network=10.1.1.0
add address=10.2.2.1/30 interface=ether2 network=10.2.2.0
add address=192.168.100.1/24 interface=ether3 network=192.168.100.0
/ip dhcp-client
add disabled=no interface=ether1
/ip route
add distance=1 dst-address=192.168.200.0/24 gateway=10.1.1.2,10.2.2.2
/system identity
set name=R1
