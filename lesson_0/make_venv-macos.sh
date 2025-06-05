#!/bin/zsh

python3 -m venv .lesson_0
source .lesson_0/bin/activate
# update pip so you have a better resolver
python -m pip install --upgrade pip
# For macos with apple silicon we don't use the cuda dist.
# pip will actually just find the correct wheel based on the platform and architecture
pip install -r requirements-macos.txt
pip install torch torchvision torchaudio
# Validate taken from https://developer.apple.com/metal/pytorch/
# You'll see `tensor([1.], device='mps:0')` if you see "MPS device not found." then it did not work.
python - <<EOF
import torch
if torch.backends.mps.is_available():
    mps_device = torch.device("mps")
    x = torch.ones(1, device=mps_device)
    print (x)
else:
    print ("MPS device not found.")
EOF
echo "Virtual environment created and activated. Requirements installed."
echo "To deactivate the virtual environment, run 'deactivate'."
echo "To activate the virtual environment in the future, run 'source .lesson_0/bin/activate'."