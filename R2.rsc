# mar/23/2020 05:21:57 by RouterOS 6.46.4
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip address
add address=10.10.10.2/24 interface=ether1 network=10.10.10.0
add address=192.168.2.1/24 interface=ether2 network=192.168.2.0
/ip dhcp-client
add disabled=no interface=ether1
/ip route
add distance=1 dst-address=192.168.1.0/24 gateway=10.10.10.1
add distance=1 dst-address=192.168.3.0/24 gateway=10.10.10.3
/system identity
set name=R2
