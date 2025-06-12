#!/bin/bash

if ! [ -f ".lesson_2" ]; then
  python3 -m venv .lesson_2
fi
source .lesson_2/bin/activate

python -m pip install --upgrade pip
pip install -r requirements.txt
pip3 install torch torchvision torchaudio

echo "Virtual environment activated. Requirements installed."
echo "To deactivate the virtual environment, run 'deactivate'."
echo "To activate the virtual environment in the future, run 'enter_venv.sh'"