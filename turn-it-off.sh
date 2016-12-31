#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/user_config.sh

ssh -t $TARGET_USER@$TARGET_IP "sudo shutdown -h now"

