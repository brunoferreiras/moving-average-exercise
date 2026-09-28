#!/usr/bin/env bash
# Usage: ./run-tests.sh js   |   ./run-tests.sh cpp
set -e
cd "$(dirname "$0")"

case "$1" in
  js|javascript)
    node --test javascript/solution.test.js
    ;;
  cpp|c++)
    mkdir -p build
    g++ -std=c++17 -O2 -Wall -o build/tests cpp/tests.cpp
    ./build/tests
    ;;
  *)
    echo "Usage: ./run-tests.sh js   or   ./run-tests.sh cpp"
    exit 1
    ;;
esac
