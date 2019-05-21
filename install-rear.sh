#!/bin/bash

echo "Hello World!"

hash python2  2>/dev/null || { echo >&2 "I require Python2 but it's not installed.  Aborting."; exit 1; }
hash pip 2>/dev/null || { echo >&2 "I require Pip but it's not installed.  Aborting."; exit 1; }

pip install -r ~/src/aws-smartcycle/sensors/requirements.txt;
pip install -r ~/src/aws-smartcycle/audio/requirements.txt;
