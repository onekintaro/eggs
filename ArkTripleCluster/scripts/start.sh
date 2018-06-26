#!/bin/bash
screen -dmS ark1 "./Ark01/ShooterGame/Binaries/Linux/ShooterGameServer $1?listen?ServerAdminPassword=$4?Port=$5?MaxPlayers=$8" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9
screen -dmS ark2 "./Ark02/ShooterGame/Binaries/Linux/ShooterGameServer $2?listen?ServerAdminPassword=$4?Port=$6?MaxPlayers=$8" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9
screen -dmS ark3 "./Ark03/ShooterGame/Binaries/Linux/ShooterGameServer $3?listen?ServerAdminPassword=$4?Port=$7?MaxPlayers=$8" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9

echo 'Server Started this may take a while until the server run. To view a server, just input screen -r ark[Number]'
