if [ "$1" == "-w" ] 
then
  cp wifi/interfaces /etc/network/interfaces
  cp wifi/dhcpcd.conf /etc/dhcpcd.conf
  service dnsmasq stop 
  service hostapd stop
else
  cp AP/interfaces /etc/network/interfaces
  cp AP/dhcpcd.conf /etc/dhcpcd.conf
  service dnsmasq start
  service hostapd start
fi

reboot -h now
