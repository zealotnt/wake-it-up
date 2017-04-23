#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/user_config.sh

if [[ $TARGET_SSH_CONFIG_NAME != "" ]]; then
	ssh -v -t $TARGET_SSH_CONFIG_NAME "sudo shutdown -h now"
else
	ssh -t $TARGET_USER@$TARGET_IP "sudo shutdown -h now"
fi
