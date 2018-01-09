cmake_minimum_required(VERSION 3.9)
project(omp-demo)

if( NOT CMAKE_BUILD_TYPE )
    set( CMAKE_BUILD_TYPE Release CACHE STRING
            "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel."
            FORCE )
endif()

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -fomit-frame-pointer -march=core-avx2 -ffast-math -ansi-alias -qopt-report=5")
set(CMAKE_CXX_FLAGS_MINSIZEREL "${CMAKE_CXX_FLAGS_MINSIZEREL} -fomit-frame-pointer -march=core-avx2 -ffast-math -ansi-alias -qopt-report=5")

add_executable(openmp_1 examp1.cpp)
target_compile_options(openmp_1 PUBLIC -unroll=0)
add_executable(openmp_2 examp2.cpp)
add_executable(openmp_3 examp3.cpp)
add_executable(openmp_4 examp4.cpp)
add_executable(openmp_5 examp5.cpp)