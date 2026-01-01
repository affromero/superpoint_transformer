#!/bin/bash

echo "⭐ Installing FRNN"

# Clean previous builds to avoid GLIBC mismatch issues
echo "Cleaning previous builds..."
rm -rf src/dependencies/FRNN/build
rm -rf src/dependencies/FRNN/frnn.egg-info
rm -rf src/dependencies/FRNN/external/prefix_sum/build
rm -rf src/dependencies/FRNN/external/prefix_sum/prefix_sum.egg-info

# install a prefix_sum routine first
cd src/dependencies/FRNN/external/prefix_sum
pip install . --no-cache-dir --no-build-isolation --force-reinstall

# install FRNN
cd ../../ # back to the {FRNN} directory
pip install . --no-cache-dir --no-build-isolation --force-reinstall
cd ../../../


# Compile the projects
python scripts/setup_dependencies.py build_ext

# let user know
echo
echo "🚀 Successfully installed SPT"
