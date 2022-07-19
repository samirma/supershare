#!/bin/sh

device=$(tr -dc 'a-zA-Z' < /dev/urandom | fold -w 5 | head -1)

echo Hello pawns: $email_pawns  honeygain: $email_honeygain  $device 

pwd 

echo "p2pclient"
p2pclient -l $email_p2p

echo "pawns-cli"
#./pawns-cli -email=$email_pawns -password=$pass_pawns -device-name=$device -accept-tos &

