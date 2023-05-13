# Install NASM assmbler

> apt-get -y install nasm

# Install gcc and g++

> apt install gcc
> apt install g++

# Install ld tool

> apt-get install binutils

# Install and configure objconv

- Download objconv
> https://www.agner.org/optimize/#objconv

- Extract objconv.zip
- Extract source.zip which is inside objconv.zip
- run `build.sh` for linux and run `objconv.exe` for windows
- move objconv to your binaries and run chmod 777 for that file