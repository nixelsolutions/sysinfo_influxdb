#!/bin/bash -e

[ "${INFLUXDB_HOST}" == "**ChangeMe**" ] && echo "=> ERROR: you must set INFLUXDB_HOST environment variable." && exit 1
[ "${INFLUXDB_NAME}" == "**ChangeMe**" ] && echo "=> ERROR: you must set INFLUXDB_NAME environment variable." && exit 1

SYSINFO_INTERVAL=${SYSINFO_INTERVAL:-5m}
SYSINFO_SECRET=sysinfo.secret

echo "${INFLUXDB_PASS}" > $SYSINFO_SECRET

SYSINFO_INFLUXDB_CMD="sysinfo_influxdb -D -i $SYSINFO_INTERVAL -h ${INFLUXDB_HOST}:${INFLUXDB_PORT} -d ${INFLUXDB_NAME} -u ${INFLUXDB_USER} -s $SYSINFO_SECRET"

ping -c 10 ${INFLUXDB_HOST} >/dev/null 2>&1
echo "=> Running sysinfo_linux daemon: $SYSINFO_INFLUXDB_CMD"
./$SYSINFO_INFLUXDB_CMD

