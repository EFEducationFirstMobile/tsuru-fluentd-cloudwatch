#!/bin/sh -e

sed -e "s/@@LOG_GROUP_NAME@@/$LOG_GROUP_NAME/" /etc/fluentd.conf.template | \
	sed -e "s;@@LOG_STREAM_NAME@@;$LOG_STREAM_PREFIX-$RANDOM;" > /etc/fluentd.conf

exec fluentd -c /etc/fluentd.conf
