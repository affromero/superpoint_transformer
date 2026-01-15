#!/bin/bash
set -e

# Parse arguments
FORCE_REINSTALL=false
for arg in "$@"; do
    case $arg in
        --force-reinstall)
            FORCE_REINSTALL=true
            shift
            ;;
    esac
done

echo "⭐ Installing FRNN"

# install a prefix_sum routine first
cd src/dependencies/FRNN/external/prefix_sum
if [ "$FORCE_REINSTALL" = true ]; then
    rm -rf build
fi
python -m pip install .

# install FRNN
cd ../../ # back to the {FRNN} directory
if [ "$FORCE_REINSTALL" = true ]; then
    rm -rf build
fi
python -m pip install .
cd ../../../

# let user know
echo
echo "🚀 Successfully installed SPT"
