#!/bin/bash

beginswith() { case $1 in "$2"*) true;; *) false;; esac; }

# glad
cd glad

if beginswith "$OSTYPE" darwin; then #macos
	clang src/glad.c -c -g -Iinclude -I.
else
	cc src/glad.c -c -g -Iinclude -I.
fi

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
