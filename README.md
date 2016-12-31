# Introduction
- Wake up and availability check for my home server

# How to do it
- config your target's MAC address in user_config.sh
  + TARGET_MAC="your-pc's-mac-address-here"
  + WAIT_TIME=120 # second to wait for target available
  + TARGET_IP=192.168.1.253 # ip address of target machine
  + TARGET_PORT=22 # port of target machine
  + TARGET_USER="zealot" # user of machine to execute turn it off
- wake it: `bash doit.sh

