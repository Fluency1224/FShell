procnum=` ifconfig wlan0 | grep "HWaddr" | awk '{ print $5}' | wc -l`
macaddr=` ifconfig wlan0 | grep "HWaddr" | awk '{ print $5}' `
echo "waln0 Mac Addr: $macaddr"
if [ $procnum -eq 0 ]; then
	echo "Config Mac Addr Error!"
else
	ifconfig eth0 down
	ifconfig eth0 hw ether $macaddr
	ifconfig eth0 up
fi