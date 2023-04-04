#!/bin/bash

# glad
cd glad
clang src/glad.c -c -g -Iinclude -I.
ar rc ../glad.a *.o
rm *.o
cd ..

# SDL
mkdir -p build
cd build

../SDL/configure --disable-shared --enable-static

make
cp build/.libs/libSDL2main.a ../libSDL2main.a
cp build/.libs/libSDL2.a ../libSDL2.a

cd ..
rm -r build
