#!/bin/bash

# mount the network-share and run the loop watch script outputing all to dev null so the screen remains black

sudo ./mountshare.sh
sudo 1>/dev/null 2>/dev/null ./watch_script.sh
./resetall.sh