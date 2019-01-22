#!/bin/bash

declare -p | grep -E ' DB_HOST=| DB_NAME=| DB_PASS=| DB_USER=| WWW_ROOT=| MDDATA=| LOCALCACHEDIR=' >/etc/profile.d/moodle_env.sh

/usr/sbin/cron -f -L 15
