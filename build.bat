@echo off

set libs=SDL2.lib SDL2main.lib glad.lib user32.lib gdi32.lib shell32.lib opengl32.lib
set includes=-Iglad/include -ISDL/include

cl main.c -EHsc -Z7 -DEBUG -nologo %includes% %libs% /link /SUBSYSTEM:windows /ENTRY:mainCRTStartup
::cl main.c -EHsc -Z7 -DEBUG -nologo %includes% %libs%
::cl main.c -EHsc -O2 -nologo %includes% %libs%
