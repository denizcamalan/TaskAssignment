cmake_minimum_required(VERSION 3.23)

project(RelimetricsTest VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)

add_library(
    manageStatus SHARED
    statusManage.hpp
    statusManage.cpp
)
add_library(
    getNumber SHARED
    statusManage.hpp
    statusManage.cpp
)

add_executable(out main.cpp statusManage.cpp)

target_link_libraries(out PRIVATE manageStatus getNumber) 
