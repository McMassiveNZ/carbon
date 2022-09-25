if(MSVC)
    set(EXE_TYPE WIN32)
elseif(APPLE)
    set(EXE_TYPE MACOSX_BUNDLE)
else()
    set(EXE_TYPE)
endif()

add_executable( ImpostersSample ${EXE_TYPE}
    ImpostersSample.h
    ImpostersSample.cpp
)

target_link_libraries(
    ImpostersSample
    PRIVATE CarbonEngine
)

if(MSVC)
    set_target_properties(
        ImpostersSample PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)"
    )
endif()