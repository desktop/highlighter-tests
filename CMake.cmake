cmake_minimum_required(VERSION 3.1...3.27)

project(
  ModernCMakeExample
  VERSION 1.0
  LANGUAGES CXX)

add_library(MyLibExample simple_lib.cpp simple_lib.hpp)

add_executable(MyExample simple_example.cpp)

target_link_libraries(MyExample PRIVATE MyLibExample)