#!/bin/sh

# Actually works for ProtonVPN
# we are connected if the directory exists
if [ -d /proc/sys/net/ipv4/conf/wg0 ]; then
  # we are connected, so propose disconnexion
  echo "Disconnect VPN"
  sudo wireguard d  
else
  echo "Connect VPN"
  sudo wireguard c -f -p TCP
fi
