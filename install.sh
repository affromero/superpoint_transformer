#!/bin/bash

echo "⭐ Installing FRNN"

# install a prefix_sum routine first
cd src/dependencies/FRNN/external/prefix_sum
pip install .

# install FRNN
cd ../../ # back to the {FRNN} directory
pip install .
cd ../../../


# Compile the projects
python scripts/setup_dependencies.py build_ext

# let user know
echo
echo "🚀 Successfully installed SPT"
