# OpenCMW example project

This is a minimal example project to show how the opencmw library can be used from any CMake project.
It uses CMake's FetchContent mechanism to obtain opencmw and (some of) its dependencies.
Some dependencies (openssl, zlib) are assumed to be installed system wide such that the opencmw project can access them with find_package.

``` bash
cmake -S . -B build
cmake --build build
build/src/MajordomoRest_example
```

If you want to use a local checkout of opencmw, there is an environment variable which you can point to your checkout.
The same works for opencmw's dependencies as it internally uses fetchContent as well.

``` bash
cmake -S . -B build -DFETCHCONTENT_SOURCE_DIR_FMT=~/libfmt -DFETCHCONTENT_SOURCE_DIR_OPENCMW-CPP=~/opencmw-cpp
```

OpenCMW will autumatically detect if it is used as a subproject and disable certain parts of the build like examples or tests.
