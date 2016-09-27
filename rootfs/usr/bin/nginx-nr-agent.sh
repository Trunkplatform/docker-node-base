#!/bin/sh

mkdir -p /var/run/nginx-nr-agent && chown nobody /var/run/nginx-nr-agent
if [ "$NEW_RELIC_LICENSE_KEY" != "" ]; then
    sed "s/NEW_RELIC_APP_NAME/$NEW_RELIC_APP_NAME/g; s/NEW_RELIC_LICENSE_KEY/$NEW_RELIC_LICENSE_KEY/g" \
        /etc/nginx-nr-agent/nginx-nr-agent.ini.template > /etc/nginx-nr-agent/nginx-nr-agent.ini
    echo "Starting Nginx Newrelic Agent"
    exec /usr/bin/nginx-nr-agent.py -c /etc/nginx-nr-agent/nginx-nr-agent.ini -f start > /var/log/nginx-nr-agent.log
else
    echo "Newrelic is not configured. Agent is going into sleeping mode..."
    sleep 10000d
fi
