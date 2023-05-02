This repository contains `conda` recipes for building OMPL with Python bindings and the requisite dependencies.

# Usage
These recipes are tested to work with `conda mambabuild -c conda-forge`. Your mileage may vary with other parameters (e.g., not specifying `-c conda-forge` or using `conda-build` directly).

You can either build the recipes directly by invoking `conda mambabuild -c conda-forge ompl` from the directory into which you have cloned this repository, or you can run the `build.sh` script, which will install `conda-build`, `conda-verify`, and `boa` (for `mambabuild`) into your `base` `conda` environment, then run the build command for you.

# Disclaimer
These recipes are not officially supported or maintained by OMPL. Issues and PRs are welcome, but may not receive quick responses. The recipes have only been tested on Linux.
