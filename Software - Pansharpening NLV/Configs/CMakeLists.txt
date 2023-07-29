cmake_minimum_required(VERSION 3.12)
project(pansharpining_ipol)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_PREFIX_PATH /usr/include/gdal)
find_package(GDAL REQUIRED)
set(CMAKE_PREFIX_PATH /usr/include/libpng)
find_package(PNG REQUIRED)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -Wall -Wextra -g")

set(SOURCE_FILES pansharpening_ipol.cpp libpansharpening.cpp io_png.c libauxiliar.cpp libpansharpening.h io_png.h libauxiliar.h)

add_executable(pansharpining_ipol ${SOURCE_FILES})
target_link_libraries(pansharpining_ipol gdal)
target_link_libraries(pansharpining_ipol png)
