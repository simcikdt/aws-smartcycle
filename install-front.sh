#!/bin/bash

echo "Hello World!"

pip install --upgrade pip

hash python2  2>/dev/null || { echo >&2 "I require Python2 but it's not installed.  Aborting."; exit 1; }
hash pip 2>/dev/null || { echo >&2 "I require Pip but it's not installed.  Aborting."; exit 1; }

pip2 install -r /home/aws_cam/aws-smartcycle/sensors/requirements.txt;
pip2 install -r /home/aws_cam/aws-smartcycle/audio/requirements.txt;

dmesg | tail

cp /home/aws_cam/aws-smartcycle/sensors/garmin-ant2.rules /etc/udev/rules.d/garmin-ant2.rules
