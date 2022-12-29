#!/bin/bash
wget https://nightly.link/ravenclaw900/DietPi-Dashboard/actions/runs/3798150466/dietpi-dashboard-x86_64.zip
unzip ./dietpi-dashboard-x86_64.zip
systemctl stop dietpi-dashboard.service
sleep 2
mv /opt/dietpi-dashboard/dietpi-dashboard /opt/dietpi-dashboard/dietpi-dashboard.old 
mv ./dietpi-dashboard /opt/dietpi-dashboard/dietpi-dashboard
chmod 755 /opt/dietpi-dashboard/dietpi-dashboard
rm ./dietpi-dashboard-x86_64.zip
systemctl start dietpi-dashboard.service
sleep 2
systemctl status dietpi-dashboard.service
sleep 2
