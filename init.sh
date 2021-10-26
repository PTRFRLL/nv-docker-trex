#!/bin/bash

if [ ! -f /config/config.json ]; then
	cp /home/nobody/config.json /config/config.json
fi

./t-rex --api-generate-key $API_PASSWORD -c /config/config.json & 

echo Starting T-rex miner...
echo ============================================================
echo Server: $SERVER
echo Algorithm: $ALGO
echo Wallet: $WALLET
echo Worker: $WORKER
echo Pass: $PASS
echo ============================================================


./t-rex -c /config/config.json -a $ALGO -o $SERVER -u $WALLET -p $PASS -w $WORKER