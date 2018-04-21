#!/bin/bash
# Executing supervisord and mysql_user

VOLUME_HOME="/var/lib/mysql"

if [[ ! -d $VOLUME_HOME/mysql ]]; then
    mysql_install_db > /dev/null 2>&1
    /scripts/mysql_user.sh
fi

exec supervisord -n

