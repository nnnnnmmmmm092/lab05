cmake_minimum_required(VERSION 3.4)
project(lab05)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/third-party/coveralls-cmake/cmake)


include_directories(banking)

add_library(lab05 STATIC banking/Account.cpp banking/Transaction.cpp)

if(COVERALLS)
	include(Coveralls)
	coveralls_turn_on_coverage()
endif()

if (COVERALLS)
	set(COVERAGE_SRCS banking/Account.cpp banking/Transaction.cpp)

    # Create the coveralls target.
    coveralls_setup(
        "${COVERAGE_SRCS}" # The source files.
        ON                 # If we should upload.
	)#"${PROJECT_SOURCE_DIR}/CMakeModules/") # (Optional) Alternate project cmake module path.
endif()


    enable_testing()
    add_subdirectory(third-party/gtest)
    file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
    add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
    target_link_libraries(check ${PROJECT_NAME} gtest_main gmock)
    add_test(NAME check COMMAND check)





