cmake_minimum_required(VERSION 3.5)

project(mp2-lab1-set CXX)

# ---------------------------------------------------------------------------
# Настройки компилятора
# ---------------------------------------------------------------------------
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug CACHE STRING "Build type" FORCE)
endif()

if(MSVC)
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)
    add_compile_options(/W3)
else()
    add_compile_options(-Wall -Wextra)
endif()

# C++11 и включение директорий с заголовками
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# ---------------------------------------------------------------------------
# Google Test (собирается из исходников внутри проекта)
# ---------------------------------------------------------------------------
add_library(gtest STATIC
    ${CMAKE_CURRENT_SOURCE_DIR}/gtest/gtest-all.cc
)
target_include_directories(gtest PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/gtest
)

# Потоки нужны для pthread-based реализации gtest на Linux/macOS
find_package(Threads REQUIRED)
target_link_libraries(gtest PUBLIC Threads::Threads)

# ---------------------------------------------------------------------------
# Основная библиотека с реализацией шаблонных классов (header-only)
# ---------------------------------------------------------------------------
add_library(utmatrix INTERFACE)
target_include_directories(utmatrix INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ---------------------------------------------------------------------------
# Пример использования
# ---------------------------------------------------------------------------
add_executable(sample_utmatrix
    ${CMAKE_CURRENT_SOURCE_DIR}/samples/sample_matrix.cpp
)
target_link_libraries(sample_utmatrix PRIVATE utmatrix)

# ---------------------------------------------------------------------------
# Тесты
# ---------------------------------------------------------------------------
add_executable(test_utmatrix
    ${CMAKE_CURRENT_SOURCE_DIR}/test/test_main.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/test/test_tmatrix.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/test/test_tvector.cpp
)
target_link_libraries(test_utmatrix PRIVATE utmatrix gtest)

# Регистрируем тесты в CTest
enable_testing()
add_test(NAME test_utmatrix COMMAND test_utmatrix)