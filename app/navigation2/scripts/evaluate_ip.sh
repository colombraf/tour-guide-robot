#!/bin/bash
current_ip=$(ifconfig | grep 192.168.100. | awk '{print $2}')
echo $current_ip
if [ $current_ip = "192.168.100.10" ]; 
then
  echo "base"
  sed -i -e "s/REMOTEIP/192\.168\.100\.1/g" /home/user1/tour-guide-robot/app/navigation2/conf/cyclone_dds_settings.xml
else
  echo "different"
  sed -i -e "s/REMOTEIP/192\.168\.100\.10/g" /home/user1/tour-guide-robot/app/navigation2/conf/cyclone_dds_settings.xml
fi
sed -i -e "s/LOCALIP/$current_ip/g" /home/user1/tour-guide-robot/app/navigation2/conf/cyclone_dds_settings.xml

