﻿cmake_minimum_required(VERSION 3.17)
project(test)

set(CMAKE_CXX_STANDARD 17)

if (MSVC)
    add_compile_options(/bigobj)
    add_compile_options(/wd4819)#忽略保存为unicode警告
endif ()



#拷贝depends目录
file(COPY "../../../template/depends/lua/" DESTINATION "../depends/lua/")
file(COPY "../../../template/depends/sol2-3.2.2/include/sol/" DESTINATION "../depends/sol/")
file(COPY "../../../template/depends/glm/" DESTINATION "../depends/glm/")
file(COPY "../../../template/depends/rttr-0.9.6/src/rttr/" DESTINATION "../depends/rttr/")
file(COPY "../../../template/depends/spdlog/include/spdlog/" DESTINATION "../depends/spdlog/")

#头文件目录
include_directories("depends/lua/src")
include_directories("depends")



file(GLOB_RECURSE lua_c "depends/lua/src/*.c")
file(GLOB_RECURSE rttr_cpp "depends/rttr/*.cpp")
file(GLOB_RECURSE engine_cpp "source/*.cpp")

add_executable(test ${lua_c} ${rttr_cpp} "example/main.cpp" ${engine_cpp})