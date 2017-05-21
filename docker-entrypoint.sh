#!/bin/bash

set -e

if [ "$1" = 'airflow' ]; then
	airflow initdb
fi

exec "$@"
