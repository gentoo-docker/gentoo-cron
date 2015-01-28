#!/bin/bash

if [ -f $CRON_FILE ]; then
    crontab $CRON_FILE
else
    echo "File: $CRON_FILE does not exists."
fi

exec "$@"
