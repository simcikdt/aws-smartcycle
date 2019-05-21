#!/bin/bash

echo "Hello World!"

apt-get -y install vim

pip install --upgrade pip

hash python2  2>/dev/null || { echo >&2 "I require Python2 but it's not installed.  Aborting."; exit 1; }
hash pip2 2>/dev/null || { echo >&2 "I require Pip but it's not installed.  Aborting."; exit 1; }

pip2 install -r /home/aws_cam/aws-smartcycle/sensors/requirements.txt;
pip2 install -r /home/aws_cam/aws-smartcycle/audio/requirements.txt;

cd ..
git clone https://github.com/baderj/python-ant.git

apt-get install -y python-setuptools
cd python-ant/
python setup.py install

cp /home/aws_cam/aws-smartcycle/sensors/garmin-ant2.rules /etc/udev/rules.d/garmin-ant2.rules

lsusb

dmesg | tail
