#!/bin/bash
/home/container/Ark01/ShooterGame/Binaries/Linux/ShooterGameServer "$1?listen?ServerAdminPassword=$4?Port=$5?MaxPlayers=$8?QueryPort=27015?RCONEnabled=True?RCONPort=27020" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9 & \
/home/container/Ark02/ShooterGame/Binaries/Linux/ShooterGameServer "$2?listen?ServerAdminPassword=$4?Port=$6?MaxPlayers=$8?QueryPort=27016?RCONEnabled=True?RCONPort=27021" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9 & \
/home/container/Ark03/ShooterGame/Binaries/Linux/ShooterGameServer "$3?listen?ServerAdminPassword=$4?Port=$7?MaxPlayers=$8?QueryPort=27017?RCONEnabled=True?RCONPort=27022" -ClusterDirOverride=/home/container/Arkcluster -clusterid=$9 &



while true; do

    # readinput
    echo 'Server Started this may take a while until the server run.'
    read -p 'server:' server

    # Exit the loop if ping is no longer dropping packets
    if [ "$server" == "quit" ]; then
        echo "Save and Stopping Server"
        host='127.0.0.1'
        port1=27020
        port2=27021
        port2=27022
        
        # rcon broadcast message
        /usr/bin/rcon -P$4 -a${host} -p${port1} 'broadcast This server is going offline in 15 seconds, the world is saving now, any changes made beyond this point will be lost.'
        /usr/bin/rcon -P$4 -a${host} -p${port2} 'broadcast This server is going offline in 15 seconds, the world is saving now, any changes made beyond this point will be lost.'
        /usr/bin/rcon -P$4 -a${host} -p${port3} 'broadcast This server is going offline in 15 seconds, the world is saving now, any changes made beyond this point will be lost.'
        
        # rcon saveworld
        /usr/bin/rcon -P$4 -a${host} -p${port1} 'saveworld'
        /usr/bin/rcon -P$4 -a${host} -p${port2} 'saveworld'
        /usr/bin/rcon -P$4 -a${host} -p${port3} 'saveworld'
        
        # wait 15s
        sleep 15;
        
        # rcon quit
        /usr/bin/rcon -P$4 -a${host} -p${port1} 'DoExit'
        /usr/bin/rcon -P$4 -a${host} -p${port2} 'DoExit'
        /usr/bin/rcon -P$4 -a${host} -p${port3} 'DoExit'
        
        echo "Server Stopped"
        break
    else
        echo "Command not found"
    fi
done
