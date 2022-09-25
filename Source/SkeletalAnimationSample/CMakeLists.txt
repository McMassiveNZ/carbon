if(MSVC)
    set(EXE_TYPE WIN32)
elseif(APPLE)
    set(EXE_TYPE MACOSX_BUNDLE)
else()
    set(EXE_TYPE)
endif()

add_executable( SkeletalAnimationSample ${EXE_TYPE}
    SkeletalAnimationSample.h
    SkeletalAnimationSample.cpp
)

target_link_libraries(
    SkeletalAnimationSample
    PRIVATE CarbonEngine
)

if(MSVC)
    set_target_properties(
        SkeletalAnimationSample PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)"
    )
endif()