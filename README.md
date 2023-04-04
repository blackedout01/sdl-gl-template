## Download
`git clone --recursive git@github.com:blackedout01/sdl-gl-template.git`
<br/>or if already cloned without `--recursive`:
<br/>`git submodule update --init`

## Build on MacOS
### Clang
Install your build tools
<br/>Open terminal and navigate to repository
<br/>Build all libraries once: `sh buildlibs.sh`
<br/>Now there are 3 new files: `libSDL2main.a`, `libSDL2.a` and `glad.a`
<br/>Build project: `sh build.sh`
<br/>Run project: `./a.out`

## Build on Windows
TBD

## Build on Linux
TBD
