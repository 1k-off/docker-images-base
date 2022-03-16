#!/bin/bash

if [[ -z "${SERVER_NAME}" ]]; then
  echo "You should set SERVER_NAME env variable!"
  exit 1
else
  sed -i "s/#{server_name}/${SERVER_NAME}/g" /etc/nginx/sites-available/default
fi

exec $@
