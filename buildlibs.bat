@echo off

set msvc_plat=x64
set msvc_conf=Debug

:: SDL2
cd SDL
msbuild -p:Configuration=%msvc_conf% VisualC/SDL.sln
copy "VisualC\%msvc_plat%\%msvc_conf%\SDL2.lib" ".\.."
copy "VisualC\%msvc_plat%\%msvc_conf%\SDL2main.lib" ".\.."
copy "VisualC\%msvc_plat%\%msvc_conf%\SDL2.dll" ".\.."
cd ..

:: glad
cd glad
set gladsrc=src/glad.c

cl %gladsrc% -c -nologo -DEBUG -Z7 -Iinclude
lib *.obj -nologo -out:../glad.lib

del *.obj
cd ..