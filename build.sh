#!/bin/bash

clang main.c -g -Iglad/include -ISDL/include glad.a libSDL2.a libSDL2main.a -framework CoreAudio -framework AudioToolbox -framework CoreFoundation -framework CoreGraphics -framework CoreHaptics -framework CoreVideo -framework ForceFeedback -framework GameController -framework IOKit -framework Carbon -framework Metal -framework Cocoa -liconv
