add_executable( DeferredLightingSample WIN32
    DeferredLightingSample.h
    DeferredLightingSample.cpp
)

target_link_libraries(
    DeferredLightingSample
    PUBLIC CarbonEngine
)