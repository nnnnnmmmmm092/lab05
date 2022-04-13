# CMake generated Testfile for 
# Source directory: /home/augustus/TIMP/lab05
# Build directory: /home/augustus/TIMP/lab05/_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(check "/home/augustus/TIMP/lab05/_build/check")
set_tests_properties(check PROPERTIES  _BACKTRACE_TRIPLES "/home/augustus/TIMP/lab05/CMakeLists.txt;18;add_test;/home/augustus/TIMP/lab05/CMakeLists.txt;0;")
subdirs("banking")
subdirs("third-party/gtest")
