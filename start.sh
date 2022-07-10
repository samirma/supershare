#!/bin/sh

echo Hello $email  $pass  $device 

pwd 

echo "p2pclient"
p2pclient -l $email

echo "pawns-cli"
./pawns-cli -email=$email -password=$pass -device-name=$device -accept-tos


echo "Honeyearn"
./honeygain


echo doing nothing...
tail -f /dev/null