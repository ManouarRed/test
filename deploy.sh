#!/bin/bash

set -e

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

nohup python3 app.py &> app.log &

echo "App started. Visit http://<YOUR_SERVER>:8000 to see it."
