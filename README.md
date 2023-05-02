This repository contains `conda` recipes for building OMPL with Python bindings, as well as the requisite dependencies for generating the Python bindings.

# Usage
These recipes are tested to work with `conda mambabuild -c conda-forge`. Your mileage may vary with other parameters (e.g., not specifying `-c conda-forge` or using `conda-build` directly).

To build OMPL, either:
1. Directly invoke `conda mambabuild -c conda-forge ompl` from the directory into which you have cloned this repository, or 
2. Run the `build.sh` script, which will install `conda-build`, `conda-verify`, and `boa` (for `mambabuild`) into your `base` `conda` environment, then run the build command for you

# Disclaimer
These recipes are not officially supported or maintained by OMPL. Issues and PRs are welcome, but may not receive quick responses. The recipes have only been tested on Linux.
