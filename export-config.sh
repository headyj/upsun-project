#!/bin/bash

echo $OCONFIG_BACKEND > /app/dist/node/conf.d/oConfig.json

jq --arg draw_password "$DRAW_PASSWORD" '.auth.autoPassword = $draw_password' /app/dist/node/conf.d/oConfig.json > /tmp/oConfig.json && mv /tmp/oConfig.json /app/dist/node/conf.d/oConfig.json