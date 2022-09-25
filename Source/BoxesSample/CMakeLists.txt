if(MSVC)
    set(EXE_TYPE WIN32)
elseif(APPLE)
    set(EXE_TYPE MACOSX_BUNDLE)
else()
    set(EXE_TYPE)
endif()

add_executable( BoxesSample ${EXE_TYPE} 
    BoxesSample.h
    BoxesSample.cpp
)

target_link_libraries(
    BoxesSample
    PRIVATE CarbonEngine
)

if(MSVC)
    set_target_properties(
        BoxesSample PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)"
    )
endif()