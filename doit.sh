#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ./user_config.sh
chmod +x $DIR/wakeonlan.pl
chmod +x $DIR/wait-for-it.sh

set -x
$DIR/wakeonlan.pl $TARGET_MAC
{ set +x; } 2>/dev/null

$DIR/wait-for-it.sh $TARGET_IP:$TARGET_PORT -t $WAIT_TIME

