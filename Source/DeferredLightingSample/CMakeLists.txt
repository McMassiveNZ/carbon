if(MSVC)
    set(EXE_TYPE WIN32)
elseif(APPLE)
    set(EXE_TYPE MACOSX_BUNDLE)
else()
    set(EXE_TYPE)
endif()

add_executable( DeferredLightingSample ${EXE_TYPE}
    DeferredLightingSample.h
    DeferredLightingSample.cpp
)

target_link_libraries(
    DeferredLightingSample
    PRIVATE CarbonEngine
)

if(MSVC)
    set_target_properties(
        DeferredLightingSample PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)"
    )
endif()