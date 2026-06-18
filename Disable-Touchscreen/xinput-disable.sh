#!/bin/bash

#                              This is the device name
DEVICE_ID=$(xinput list | grep "RAYD0001:00 2386:4B48" | grep -oP 'id=\K[0-9]+')

if [ -z "$DEVICE_ID" ]; then
    echo "Device not found"
    exit 1
fi

xinput disable "$DEVICE_ID"
echo "Disabled device ID $DEVICE_ID"