#!/bin/fish

# ATTENTION - To configure the bridge connection libvirtd is needed

# Parameters for onboard connection
set ADAPTER1 (ip link show | grep -B 1 "f5:e8" | grep enp | awk -F':' '{print $2}')
set CONECTION1 (nmcli con show | grep $ADAPTER1 | awk '{print $1" "$2" "$3}')
set CONECTION1_NEWNAME "Onboard"

# Parameters for bridge connection
# set ADAPTER2 (ip link show | grep -B 1 "d0:00:30:13:5e:86" | grep enp | awk -F':' '{print $2}')
# set CONECTION2_ID (nmcli con show | grep $ADAPTER2 | awk '{print $4}')
# set BR_NAME br10
# set BR_INT $ADAPTER2
# set SUBNET_IP 10.10.10.1/24
# set DNS1 8.8.8.8
# set DNS2 8.8.4.4


# Configuring onboard connection to a fixed ip adddress

nmcli con mod $CONECTION1 connection.id $CONECTION1_NEWNAME
nmcli con mod $CONECTION1_NEWNAME ipv4.addresses 192.168.15.100/24
nmcli con mod $CONECTION1_NEWNAME ipv4.gateway 192.168.15.1
nmcli con mod $CONECTION1_NEWNAME ipv4.dns "192.168.15.3 8.8.4.4"
nmcli con mod $CONECTION1_NEWNAME ipv4.method manual
nmcli con down $CONECTION1_NEWNAME && nmcli con up $CONECTION1_NEWNAME 

# Configuring brige connection
# nmcli connection delete $CONECTION2_ID
# nmcli connection add type bridge autoconnect yes con-name $BR_NAME ifname $BR_NAME
# nmcli connection modify $BR_NAME ipv4.addresses $SUBNET_IP ipv4.method manual
# nmcli connection modify $BR_NAME ipv4.dns $DNS1 +ipv4.dns $DNS2
# nmcli connection add type bridge-slave autoconnect yes con-name $BR_INT ifname $BR_INT master $BR_NAME
# nmcli connection up $BR_NAME

# virsh net-define /home/renata/SystemInfo/config-bridge.xml
# virsh net-start --network BridgeNet01
# virsh net-autostart BridgeNet01

# Configuring VPN with Lanlink
nmcli connection add connection.id Lanlink connection.type vpn vpn.service-type openconnect vpn.data cookie-flags=2,gateway=vpn.lanlink.com.br,protocol=gp
