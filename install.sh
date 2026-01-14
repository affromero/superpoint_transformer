#!/bin/bash
set -e

echo "⭐ Installing FRNN"

# install a prefix_sum routine first
cd src/dependencies/FRNN/external/prefix_sum
rm -rf build
python -m setup install

# install FRNN
cd ../../ # back to the {FRNN} directory
rm -rf build
python -m setup install
cd ../../../

# Compile the projects
python scripts/setup_dependencies.py build_ext

# let user know
echo
echo "🚀 Successfully installed SPT"
