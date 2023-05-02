#!/bin/env bash

echo "Activating base conda environment"
eval "$(conda shell.bash hook)"
conda activate base --no-stack
echo "Ensuring build tools are installed"
conda install -y conda-build conda-verify boa
echo "Building OMPL with Python bindings"
if conda mambabuild -c conda-forge ompl; then
	echo "OMPL should now be installable in a conda environment using --use-local"
	exit 0
else
	echo "Building OMPL failed!"
	exit 1
fi
