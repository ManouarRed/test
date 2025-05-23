#!/bin/bash
set -e

echo "Creating Python virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Upgrading pip, setuptools, and wheel..."
pip install --upgrade pip setuptools wheel

echo "Pip version:"
python3 -m pip --version

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Starting Flask app in background..."
nohup python3 app.py &> app.log &

echo "Deployment complete. Visit your_server:8000 to view the app."
