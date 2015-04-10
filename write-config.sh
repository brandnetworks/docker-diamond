#!/usr/bin/env bash

#replace the hostname of the influxdb instance
sed -i 's/replace-me-influx-hostname/'$INFLUX_DB_HOSTNAME'/' $1

#replace the metadata service host
ADDRESS=${METADATA_HOST:=169.254.169.254}
sed -i 's/replace-me-ec2-metadata-host/'$ADDRESS'/' $1
