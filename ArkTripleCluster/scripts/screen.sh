#!/bin/bash
screen -dmS ark1 ./start.sh $1 $4 $7 $8 $9 ${10}
screen -dmS ark2 ./start.sh $2 $5 $7 $8 $9 ${10}
screen -dmS ark3 ./start.sh $3 $6 $7 $8 $9 ${10}

echo 'Server Started this may take a while until the server run. To view a server, just input screen -r ark[Number]'
