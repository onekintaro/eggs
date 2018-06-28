#!/bin/bash
/home/container/Ark01/ShooterGame/Binaries/Linux/ShooterGameServer "$1?listen?ServerAdminPassword=$4?Port=$5?MaxPlayers=$8?RCONEnabled=True?RCONPort=27020" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9 & \
/home/container/Ark02/ShooterGame/Binaries/Linux/ShooterGameServer "$2?listen?ServerAdminPassword=$4?Port=$6?MaxPlayers=$8?RCONEnabled=True?RCONPort=27021" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9 & \
/home/container/Ark03/ShooterGame/Binaries/Linux/ShooterGameServer "$3?listen?ServerAdminPassword=$4?Port=$7?MaxPlayers=$8?RCONEnabled=True?RCONPort=27022" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9 &

echo 'Server Started this may take a while until the server run.'
