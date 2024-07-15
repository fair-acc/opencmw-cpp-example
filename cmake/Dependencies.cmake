include(FetchContent)

FetchContent_Declare(
        opencmw-cpp
        GIT_REPOSITORY https://github.com/fair-acc/opencmw-cpp.git
        GIT_TAG 0fb3758c3ffe7707aa5e0bd2ad25f9e8fb19f79d # main of 16.07.2004 # todo: use proper release once available
)

FetchContent_MakeAvailable(opencmw-cpp)
