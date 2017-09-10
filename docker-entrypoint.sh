#!/bin/bash

set -e

if [ -n "${TZ}" -a -z "$(echo ${TZ} | grep -v '\.\.')" -a -f /usr/share/zoneinfo/${TZ} ]; then
	echo "set timezone ${TZ} by TZ environment variable."
	cp /usr/share/zoneinfo/${TZ} /etc/localtime
fi

if [ "$1" = 'airflow' ]; then
	airflow initdb
fi

exec "$@"
