cmake_minimum_required(VERSION 2.8.8)
project(tiny)


option(TRANSMITTER_ID_IDX "Specifies the TX Id index. 0=MO, 1=MOE, ..., 5=MO5." "5")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/../cmake)

INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR})

# Specify programmer
set(AVR_UPLOADTOOL avrdude)
set(AVR_PROGRAMMER stk500v2)
set(AVR_UPLOADTOOL_PORT /dev/ttyACM0)

# Specify CPU
set(AVR_MCU attiny45)
set(MCU_SPEED 8000000UL)

# Specify fuse magic
set(AVR_L_FUSE 0xE2)
set(AVR_H_FUSE 0xDF)

configure_file(config.h.in config.h)

# Include avg-gcc toolchain
include(generic-gcc-avr)
INCLUDE_DIRECTORIES(${AVR_SYSTEM_INCLUDE_PATH})
INCLUDE_DIRECTORIES("${CMAKE_SOURCE_DIR}/../lib")
INCLUDE_DIRECTORIES("${CMAKE_SOURCE_DIR}/../tiny")
INCLUDE_DIRECTORIES(${PROJECT_BINARY_DIR})

# Typical options
add_definitions("-DF_CPU=${MCU_SPEED}")
add_definitions("-fpack-struct")
add_definitions("-fshort-enums")
add_definitions("-Wall")
add_definitions("-Werror")
add_definitions("-c")
add_definitions("-std=gnu99")
add_definitions("-Os")


##########################################################################
# Firmware source
##########################################################################
set(lib_SOURCES ../lib/clock.c ../lib/keyer.c ../lib/temp.c ../lib/button.c)
set(lib_HEADERS ../lib/keyer.h ../lib/clock.h ../lib/temp.h ../lib/button.h)
set(tiny_SOURCES main.c tx.c)
set(tiny_HEADERS tx.h)

# !!! UGLY HACK TO GET RID OF "-rdynamic" flags. !!!
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

# compile & link
add_avr_executable(tiny ${tiny_SOURCES} ${lib_SOURCES})
avr_target_link_libraries(tiny ${AVR_C_LIB})


