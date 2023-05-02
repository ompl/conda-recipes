#!/bin/sh
cmake "${CMAKE_ARGS}" \
	-B build \
	-DCMAKE_INSTALL_PREFIX="$PREFIX" \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_LIBDIR=lib \
	-DOMPL_BUILD_PYBINDINGS=ON \
	-DOMPL_BUILD_DEMOS=OFF \
	-DOMPL_REGISTRATION=OFF \
	-DPYTHON_EXEC="$PYTHON" \
	-DBOOST_ROOT="$PREFIX" \
	-G "Ninja" \
	.

ninja -C build update_bindings
cmake --build build
ninja -C build install
cd py-bindings || exit
$PYTHON setup.py install
cd ..
