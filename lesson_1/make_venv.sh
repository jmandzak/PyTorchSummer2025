#!/bin/bash

python3 -m venv .lesson_1
source .lesson_1/bin/activate
pip install -r requirements.txt
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
echo "Virtual environment created and activated. Requirements installed."
echo "To deactivate the virtual environment, run 'deactivate'."
echo "To activate the virtual environment in the future, run 'source .lesson_1/bin/activate'."
