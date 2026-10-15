# CMake generated Testfile for 
# Source directory: C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix
# Build directory: C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(test_utmatrix "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/build/Debug/test_utmatrix.exe")
  set_tests_properties(test_utmatrix PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;65;add_test;C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(test_utmatrix "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/build/Release/test_utmatrix.exe")
  set_tests_properties(test_utmatrix PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;65;add_test;C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(test_utmatrix "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/build/MinSizeRel/test_utmatrix.exe")
  set_tests_properties(test_utmatrix PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;65;add_test;C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(test_utmatrix "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/build/RelWithDebInfo/test_utmatrix.exe")
  set_tests_properties(test_utmatrix PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;65;add_test;C:/Users/s25380160/Desktop/лабораторная/laba/mp2-lab2-matrix/CMakeLists.txt;0;")
else()
  add_test(test_utmatrix NOT_AVAILABLE)
endif()
