## Download
`git clone --recursive https://github.com/blackedout01/sdl-gl-template.git`
<br/>or if already cloned without `--recursive`:
<br/>`git submodule update --init`

## Update Submodules to newest commits
~~`git submodule update --remote --merge`~~
<br/>It's best to not always update to latest commits, since these might not be stable.
<br/>Instead, you can check out release commits of your library. In SDL (and other libraries probably) they are tagged. To check them out, run the following commands inside the submodule repository:
<br/>`git tag`
<br/>`git checkout <insert tag name here>`
<br/>Finally your submodule changes can be added and committed in the base repository.

## Build on MacOS
### Clang
Install your build tools
<br/>Open terminal and navigate to repository
<br/>Build all libraries once: `sh buildlibs.sh`
<br/>Now there are 3 new files: `libSDL2main.a`, `libSDL2.a` and `glad.a`
<br/>Build project: `sh build.sh`
<br/>Run project: `./a.out`

## Build on Windows
### MSVC
Install Visual Studio Build Tools https://visualstudio.microsoft.com/de/downloads/?q=build+tools (at the bottom of the page)
<br/>Open "x64 Native Tools Command Prompt for VS 2022" and navigate to repository
<br/>Build all libraries once: `buildlibs.bat`
<br/>Now there are 4 new files: `SDL2main.lib`, `SDL2.lib`, `glad.lib` and `SDL2.dll` (I don't understand how to build static SDL)
<br/>Build project: `build.bat` (not sure about that warning either)
<br/>Run project: `main.exe`

## Build on Linux
Open terminal and navigate to repository
<br/>Build all libraries once: `sh buildlibs.sh`
<br/>Now there are 3 new files: `libSDL2main.a`, `libSDL2.a` and `glad.a`
<br/>Build project: `sh build.sh`
<br/>Run project: `./a.out`
