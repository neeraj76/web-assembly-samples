# https://www.thecodedose.com/blog/loading-webassembly-modules-in-javascript

# Compile sum.app to sum.wasm
em++ -std=c++11 sum.cpp -o sum.js -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'

# We can view the wasm
od -c sum.wasm

npx http-server

# We will generate scripts to run these command
npm init -y

npm run build:wasm


