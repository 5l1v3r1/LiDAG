#!/bin/bash
function send_round(){
    ./jight --rpcport 9525 send -f 0 -t 1
    ./jight --rpcport 9525 send -f 1 -t 1
    ./jight --rpcport 9525 send -f 2 -t 1
    ./jight --rpcport 9525 send -f 3 -t 1
    ./jight --rpcport 9525 send -f 4 -t 1
    ./jight --rpcport 9525 send -f 5 -t 1
    ./jight --rpcport 9525 send -f 6 -t 1
    ./jight --rpcport 9525 send -f 7 -t 1
    ./jight --rpcport 9525 send -f 8 -t 1
    ./jight --rpcport 9525 send -f 9 -t 1
}

function send_10rounds(){
    send_round()
    send_round()
    send_round()
    send_round()
    send_round()
    send_round()
    send_round()
    send_round()
    send_round()
    ./jight --rpcport 9525 refreshtips
    send_round()
}
