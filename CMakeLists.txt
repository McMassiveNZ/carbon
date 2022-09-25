cmake_minimum_required(VERSION 3.22)

#set the project name
project(Carbon VERSION 1.0.0)

message(STATUS "Building Carbon")

#specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED true)
set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "" FORCE)

option(CARBON_INCLUDE_ANGELSCRIPT "Add the AngelScript to this build of Carbon" OFF)
option(CARBON_INCLUDE_BULLET "Add Bullet Physics to this build of Carbon" ON)
option(CARBON_INCLUDE_PHYSX "Add PhysX PhysX to this build of Carbon" OFF)
option(CARBON_INCLUDE_FREEIMAGE "Add the FreeImage to this build of Carbon" ON)
option(CARBON_INCLUDE_FREETYPE "Add the FreeType to this build of Carbon" ON)
option(CARBON_INCLUDE_OPENAL "Add OpenAL to this build of Carbon" ON)
option(CARBON_INCLUDE_OPENASSETIMPORT "Add OpenAssetImport to this build of Carbon" ON)
option(CARBON_INCLUDE_VORBIS "Add VORBIS to this build of Carbon" ON)
option(CARBON_INCLUDE_ZLIB "Add ZLIB to this build of Carbon" ON)

option(CARBON_STATIC_LIBRARY "Compile Carbon as static library" OFF)

# Binaries should be placed in the project build binary directory.
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/")

# Dynamic libraries should be placed next to the binaries
# (overrides putting them to lib on non-dll platforms)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/")

## Static and import libraries are placed in the "lib" subdirectory.
## Specifying this variable is required if we touch the ones above.
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib/")

# Disable setting build tree RPATH on generated executables.
set(CMAKE_SKIP_BUILD_RPATH true)

# Set installation destination RPATH as $ORIGIN (that is, the binary directory)
set(CMAKE_INSTALL_RPATH "$ORIGIN")

# Add installation path (as set above) to RPATH of the generated executable
set(CMAKE_BUILD_WITH_INSTALL_RPATH true)

# Don't add link paths to RPATH of the generated executable
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH false)

set(DYNAMIC_LIBRARY_FILE_SUFFIX "")
if (WIN32)
	set(CMAKE_DEBUG_POSTFIX "_debug")

	if (CMAKE_SIZEOF_VOID_P MATCHES 8)
		set(DYNAMIC_LIBRARY_FILE_SUFFIX "_x64")
	else()
		set(DYNAMIC_LIBRARY_FILE_SUFFIX "_x86")
	endif()
endif()

add_subdirectory(Source)