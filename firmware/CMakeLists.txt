cmake_minimum_required(VERSION 2.8.8)
project(peil)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)

INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR})

# Specify programmer
set(AVR_UPLOADTOOL avrdude)
set(AVR_PROGRAMMER stk500v2)
set(AVR_UPLOADTOOL_PORT /dev/ttyACM0)

# Specify CPU
set(AVR_MCU attiny45)

# Specify fuse magic
set(AVR_L_FUSE 0xFD)
set(AVR_H_FUSE 0xD4)

# Specify CPU frequency
set(MCU_SPEED "14318180ULL")

# Include avg-gcc toolchain
include(generic-gcc-avr)
INCLUDE_DIRECTORIES(${AVR_SYSTEM_INCLUDE_PATH})

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
set(firmware_SOURCES main.c tx.c clock.c keyer.c temp.c button.c)
set(firmware_HEADERS keyer.h tx.h clock.h temp.h button.h)

# !!! UGLY HACK TO GET RID OF "-rdynamic" flags. !!!
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

# compile & link
add_avr_executable(firmware ${firmware_SOURCES})
avr_target_link_libraries(firmware ${AVR_C_LIB})


