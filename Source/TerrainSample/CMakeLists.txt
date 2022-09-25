if(MSVC)
    set(EXE_TYPE WIN32)
elseif(APPLE)
    set(EXE_TYPE MACOSX_BUNDLE)
else()
    set(EXE_TYPE)
endif()

add_executable( TerrainSample ${EXE_TYPE}
    TerrainSample.h
    TerrainSample.cpp
)

target_link_libraries(
    TerrainSample
    PRIVATE CarbonEngine
)

if(MSVC)
    set_target_properties(
        TerrainSample PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)"
    )
endif()