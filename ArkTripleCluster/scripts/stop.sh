#!/bin/bash
host='127.0.0.1'
port1=27020
port2=27021
port2=27022

# rcon broadcast message
/usr/bin/rcon -P$1 -a${host} -p${port1} 'broadcast This server is going offline in 15 seconds, the world is saving now, any changes made beyond this point will be lost.'
/usr/bin/rcon -P$1 -a${host} -p${port2} 'broadcast This server is going offline in 15 seconds, the world is saving now, any changes made beyond this point will be lost.'
/usr/bin/rcon -P$1 -a${host} -p${port3} 'broadcast This server is going offline in 15 seconds, the world is saving now, any changes made beyond this point will be lost.'

# rcon saveworld
/usr/bin/rcon -P$1 -a${host} -p${port1} 'saveworld'
/usr/bin/rcon -P$1 -a${host} -p${port2} 'saveworld'
/usr/bin/rcon -P$1 -a${host} -p${port3} 'saveworld'

# wait 15s
sleep 15;

# rcon quit
/usr/bin/rcon -P$1 -a${host} -p${port1} 'DoExit'
/usr/bin/rcon -P$1 -a${host} -p${port2} 'DoExit'
/usr/bin/rcon -P$1 -a${host} -p${port3} 'DoExit'
