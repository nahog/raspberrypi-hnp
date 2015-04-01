#!/bin/bash

# this script asumes that the network-share folder is an already SMB share munted on the current folder

# write a keepalive file so we put some network activity on the SBM share to prevent timeouts
date > network-share/keepalive.txt

# look for some movie files in the network share and play the first of them
FILE="$(ls nico-music/aaaa/*.[mM][kK][vV] nico-music/aaaa/*.[mM][pP]4 nico-music
/aaaa/*.[aA][vV][iI] | head -n 1)"

if [ $FILE ];
then

  if pgrep omxplayer >/dev/null 2>&1
  then
    # as omxplayer is running, we simply inform that and do not play anything
    echo "New file added but there is a file currently playing."
  else
    # if omxplayer is not running, we can play the file
    echo "File found, opening omxplayer..."
    omxplayer -b "$FILE"
  fi

else
  echo "No file was found in the network share."
fi
