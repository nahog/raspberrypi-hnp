# Raspberry pi (or any linux) headless network player

## Objective

Create some scripts that could be launched when the raspberry pi starts that does not show any system like information to the user (i.e. a black screen) and when someone drops a video file (mp4, mkv or avi) to a predefined windows share the script automatically plays that file.

## Details

There are 5 scripts, but two of them are the "interface" of this project

1. **mountshare.sh** You need to edit this file to set up your windows share username, folder and ip (make sure the user has write access to the windows share -the script writes a keepalive.txt to maintain the SMB connection-)
2. **run.sh** you need to autorun this script (with sudo right now, because it will mount the network share) after login to start the process

Each file have comments to help you understand what each one does.

## Other things you can do (with some changes)

- Put the password of the windows share on mountshare.sh so no prompt is shown
- Auto login your raspberry-pi
- Auro run run.sh at login

With these 3 steps once the raspberry pi get power it will automatically launch this script without any user interaction and will start waiting for a video to be dropped in the network share to play it.