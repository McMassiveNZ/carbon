if(MSVC)
    set(EXE_TYPE WIN32)
elseif(APPLE)
    set(EXE_TYPE MACOSX_BUNDLE)
else()
    set(EXE_TYPE)
endif()

add_executable( PostProcessSample ${EXE_TYPE}
    PostProcessSample.h
    PostProcessSample.cpp
)

target_link_libraries(
    PostProcessSample
    PRIVATE CarbonEngine
)

if(MSVC)
    set_target_properties(
        PostProcessSample PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)"
    )
endif()