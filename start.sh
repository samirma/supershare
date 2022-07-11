#!/bin/sh

device=$(tr -dc 'a-zA-Z' < /dev/urandom | fold -w 5 | head -1)

echo Hello $email  $pass  $device 

pwd 

echo "p2pclient"
p2pclient -l $email &

echo "pawns-cli"
./pawns-cli -email=$email -password=$pass -device-name=$device -accept-tos &


echo "Honeyearn"
./honeygain -tou-accept -email $email -pass $pass -device $device

