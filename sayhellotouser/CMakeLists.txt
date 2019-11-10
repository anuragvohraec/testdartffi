cmake_minimum_required(VERSION 3.4.1)

project("sayhellotouser" C)

add_subdirectory("hello")

#add_executable("${PROJECT_NAME}" sayhellotouser.c)
add_library("${PROJECT_NAME}" SHARED sayhellotouser.c)
target_include_directories("${PROJECT_NAME}" 
PRIVATE "include"
PRIVATE "hello/include")
target_link_libraries("${PROJECT_NAME}" "hello")
#target_link_directories("${PROJECT_NAME}" PRIVATE "./hello")
link_directories("./hello")