# OpenCMW example project

This is a minimal example project to show how the opencmw library can be used from any CMake project.
It uses CMake's FetchContent mechanism to obtain opencmw and (some of) its dependencies.
Some dependencies (openssl, zlib) are assumed to be installed system wide such that the opencmw project can access them with find_package.

### Building

Fetch the required dependencies and set the defaut compiler to gcc >12.2.0 (for example for ubuntu 22.04):

``` bash
sudo apt install build-essential cmake pkgconf libssl-dev zlib1g-dev libbrotli-dev
sudo apt install -y gcc-12 g++-12
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 110 --slave /usr/bin/g++ g++ /usr/bin/g++-12 --slave /usr/bin/gcov gcov /usr/bin/gcov-12
```

Configure, build and run:

```bash
cmake -S . -B build
cmake --build build -j
build/src/MajordomoRest_example
```

### Building against local dependencies

Note: If you just want to implement a service, it will not be required and brings no benefit to checkout and build opencmw-cpp separately.

There are environment variables which optionally can be used to point to your checkout of libfmt, opencmw-cpp, etc.
(The same works for opencmw's dependencies as it internally uses fetchContent as well)

To do so, refer to the top folder of the other projects, which contains the toplevel `CMakeList.txt`:

```bash
cmake -S . -B build -DFETCHCONTENT_SOURCE_DIR_FMT=~/libfmt -DFETCHCONTENT_SOURCE_DIR_OPENCMW-CPP=~/opencmw-cpp
```

OpenCMW will autumatically detect if it is used as a subproject and disable certain parts of the build like examples or tests.
