#!/bin/bash
screen -dmS ark1 ./script.sh
screen -dmS ark2 ./script.sh
screen -dmS ark3 ./script.sh

echo Server Started this may take a while until the server run. To view a server, just input screen -r ark[Number]
