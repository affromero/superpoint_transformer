#!/bin/bash

echo "⭐ Installing FRNN"

# install a prefix_sum routine first
cd src/dependencies/FRNN/external/prefix_sum
python setup.py install

# install FRNN
cd ../../ # back to the {FRNN} directory
python setup.py install
cd ../../../


# Compile the projects
python scripts/setup_dependencies.py build_ext

echo
echo "🚀 Successfully installed SPT"
