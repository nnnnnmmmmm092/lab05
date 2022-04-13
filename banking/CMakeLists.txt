cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDARD 11)

project(banking_lib)

add_library(banking STATIC Account.cpp Transaction.cpp)
