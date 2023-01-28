# https://www.thecodedose.com/blog/loading-webassembly-modules-in-javascript

# Compile sum.app to sum.wasm
em++ -std=c++11 sum.cpp -Os -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o sum.wasm

# We can view the wasm
od -c sum.wasm
