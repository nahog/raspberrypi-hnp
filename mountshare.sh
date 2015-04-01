#!/bin/bash

# mount a windows share 

mount -t cifs -o username=<<YOUR WINDOWS USER NAME, PASSWORD WILL BE PROMPT>> //<<YOUR WINDOWS COMPUTER IP>>/<<YOUR SHARED FOLDER>> network-share

#example of a windows 8 share
#mount -t cifs -o username=user@hotmail.com //192.168.1.2/Shared network-share