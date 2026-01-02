#!/bin/bash

echo "⭐ Installing FRNN"

# install a prefix_sum routine first
cd src/dependencies/FRNN/external/prefix_sum
pip install . --no-cache-dir --no-build-isolation # --force-reinstall

# install FRNN
cd ../../ # back to the {FRNN} directory
pip install . --no-cache-dir --no-build-isolation # --force-reinstall
cd ../../../

# Compile the projects
python scripts/setup_dependencies.py build_ext

# let user know
echo
echo "🚀 Successfully installed SPT"
