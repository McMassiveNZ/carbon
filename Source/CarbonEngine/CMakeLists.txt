#NOTE: There is probably a better way to do this
# Here we are essentially setting up variables containing 
# lists of files which we are putting into source groups.
# source groups are displayed as filter in the visual studio
# project.

set(SOURCES)

set( FILESYSTEM_SRC 
    Core/FileSystem/FileReader.h
    Core/FileSystem/FileReader.cpp
    Core/FileSystem/FileSystem.h
    Core/FileSystem/FileSystem.cpp
    Core/FileSystem/FileSystemError.h
    Core/FileSystem/FileSystemVolume.h
    Core/FileSystem/FileWriter.h
    Core/FileSystem/FileWriter.cpp
    Core/FileSystem/LocalDirectoryFileSystemVolume.h
    Core/FileSystem/LocalDirectoryFileSystemVolume.cpp
    Core/FileSystem/SimpleFileSystemVolume.h
    Core/FileSystem/SimpleFileSystemVolume.cpp
    Core/FileSystem/ZipFileSystemVolume.h
    Core/FileSystem/ZipFileSystemVolume.cpp
)
source_group(Core\\FileSystem FILES ${FILESYSTEM_SRC})
list(APPEND SOURCES ${FILESYSTEM_SRC})

set( MEMORY_SRC
    Core/Memory/BlockAllocator.h
    Core/Memory/BlockAllocator.cpp
    Core/Memory/BlockAllocatorSet.h
    Core/Memory/BlockAllocatorSet.cpp
    Core/Memory/DefineGlobalOperatorNewDelete.h
    Core/Memory/MemoryInterceptor.h
    Core/Memory/MemoryInterceptor.cpp
    Core/Memory/MemoryInterceptorBackend.cpp
    Core/Memory/MemoryLeakDetector.h
    Core/Memory/MemoryLeakDetector.cpp
    Core/Memory/MemoryStatistics.h
    Core/Memory/MemoryStatistics.cpp
    Core/Memory/MemoryValidator.h
    Core/Memory/MemoryValidator.cpp
)
source_group(Core\\Memory FILES ${MEMORY_SRC})
list(APPEND SOURCES ${MEMORY_SRC})

Set( THREADS_SRC
    Core/Threads/Mutex.h
    Core/Threads/Thread.h
    Core/Threads/Thread.cpp
)
source_group(Core\\Threads FILES ${THREADS_SRC})
list(APPEND SOURCES ${THREADS_SRC})

set( CORE_SRC 
    Core/BuildInfo.h
    Core/BuildInfo.cpp
    Core/CoreEvents.h
    Core/CoreEvents.cpp
    Core/Endian.h
    Core/Event.h
    Core/EventDelegate.h
    Core/EventDelegate.cpp
    Core/EventHandler.h
    Core/EventHandler.cpp
    Core/EventManager.h
    Core/EventManager.cpp
    Core/Exception.h
    Core/FileFormatRegistry.h
    Core/InterfaceRegistry.h
    Core/Logfile.h
    Core/Logfile.cpp
    Core/Noncopyable.h
    Core/Parameter.h
    Core/Parameter.cpp
    Core/ParameterArray.h
    Core/ParameterArray.cpp
    Core/Runnable.h
    Core/Runnable.cpp
    Core/SettingsManager.h
    Core/SettingsManager.cpp
    Core/SharedLibrary.h
    Core/SharedLibrary.cpp
    Core/StringBase.h
    Core/StringBase.cpp
    Core/SubclassRegistry.h
    Core/UnorderedPointerSet.h
    Core/Vector.h
    Core/VersionInfo.h
)
source_group(Core FILES ${CORE_SRC})
list(APPEND SOURCES ${CORE_SRC})

set(MAX_SRC
    Exporters/Max/MaxGeometryExporter.h
    Exporters/Max/MaxGeometryExporter.cpp
    Exporters/Max/MaxPlugin.h
    Exporters/Max/MaxPlugin.cpp
    Exporters/Max/MaxSceneExporter.cpp
    Exporters/Max/MaxSkeletalAnimationExporter.cpp
    Exporters/Max/MaxSkeletalExporterBase.h
    Exporters/Max/MaxSkeletalExporterBase.cpp
    Exporters/Max/MaxSkeletalMeshExporter.cpp
    Exporters/Max/MaxStaticMeshExporter.cpp
)
source_group(Exporters\\MAX FILES ${MAX_SRC})
list(APPEND SOURCES ${MAX_SRC})

set(MAYA_SRC
    Exporters/Maya/MayaGeometryHelper.h
    Exporters/Maya/MayaGeometryHelper.cpp
    Exporters/Maya/MayaHelper.h
    Exporters/Maya/MayaHelper.cpp
    Exporters/Maya/MayaIncludeWrapper.h
    Exporters/Maya/MayaPlugin.h
    Exporters/Maya/MayaPlugin.cpp
    Exporters/Maya/MayaSceneExporter.cpp
    Exporters/Maya/MayaSkeletalAnimationExporter.cpp
    Exporters/Maya/MayaSkeletalMeshExporter.cpp
    Exporters/Maya/MayaStaticMeshExporter.cpp
)
source_group(Exporters\\Maya FILES ${MAYA_SRC})
list(APPEND SOURCES ${MAYA_SRC})

set(EXPORTERS_SRC
    Exporters/DialogBase.h
    Exporters/DialogBase.cpp
    Exporters/ExporterStrings.h
    Exporters/ExportInfo.h
    Exporters/ExportInfo.cpp
    Exporters/ExportRunners.h
    Exporters/ExportRunners.cpp
    Exporters/ProgressDialog.h
    Exporters/ProgressDialog.cpp
)
source_group(Exporters FILES ${EXPORTERS_SRC})
list(APPEND SOURCES ${EXPORTERS_SRC})

set(PATHFINDING_SRC
    Game/Pathfinding/AStarTraversal.h
    Game/Pathfinding/AStarTraversal.cpp
    Game/Pathfinding/GridNavigationGraph.h
    Game/Pathfinding/GridNavigationGraph.cpp
    Game/Pathfinding/HexagonalNavigationGraph.h
    Game/Pathfinding/HexagonalNavigationGraph.cpp
    Game/Pathfinding/NavigationEdge.h
    Game/Pathfinding/NavigationEdge.cpp
    Game/Pathfinding/NavigationGraph.h
    Game/Pathfinding/NavigationGraph.cpp
    Game/Pathfinding/NavigationNode.h
    Game/Pathfinding/NavigationNode.cpp
)
source_group(Game\\Pathfinding FILES ${PATHFINDING_SRC})
list(APPEND SOURCES ${PATHFINDING_SRC})

set(GAME_SRC
    Game/ScrollingLayer.h
    Game/ScrollingLayer.cpp
    Game/SplashScreen.h
    Game/SplashScreen.cpp
    Game/Sprite.h
    Game/Sprite.cpp
)
source_group(Game FILES ${GAME_SRC})
list(APPEND SOURCES ${GAME_SRC})

if(APPLE)
    set(GAME_SRC_APPLE
        Game/GameCenter.h
        Game/GameCenter.mm
        Game/InAppPurchase.h
        Game/InAppPurchase.mm
    )
    source_group(Game FILES ${GAME_SRC_APPLE})
    list(APPEND SOURCES ${GAME_SRC_APPLE})
endif()

set(GEOMETRY_SRC
    Geometry/Triangle.h
    Geometry/Triangle.cpp
    Geometry/TriangleArray.h
    Geometry/TriangleArray.cpp
    Geometry/TriangleArraySet.h
    Geometry/TriangleArraySet.cpp
    Geometry/TriangleStripper.h
    Geometry/TriangleStripper.cpp
)
source_group(Geometry FILES ${GEOMETRY_SRC})
list(APPEND SOURCES ${GEOMETRY_SRC})

if( APPLE )
    set(GRAPHICS_IOS_SRC Graphics/iOS/iOSOpenGLES2.h)
    source_group(Graphics\\iOS FILES ${GRAPHICS_IOS_SRC})
    list(APPEND SOURCES ${GRAPHICS_IOS_SRC})
endif()

set(GRAPHICS_OPENGL_11_SRC
    Graphics/OpenGL11/OpenGL11.h
    Graphics/OpenGL11/OpenGL11.cpp
    Graphics/OpenGL11/OpenGL11DataBuffer.cpp
    Graphics/OpenGL11/OpenGL11Extensions.h
    Graphics/OpenGL11/OpenGL11Extensions.cpp
    Graphics/OpenGL11/OpenGL11RenderTarget.cpp
    Graphics/OpenGL11/OpenGL11ShaderConstant.h
    Graphics/OpenGL11/OpenGL11ShaderProgram.h
    Graphics/OpenGL11/OpenGL11Texture.cpp
)
source_group(Graphics\\OpenGL11 FILES ${GRAPHICS_OPENGL_11_SRC})
list(APPEND SOURCES ${GRAPHICS_OPENGL_11_SRC})

set(GRAPHICS_OPENGL_41_SRC
    Graphics/OpenGL41/OpenGL41.h
    Graphics/OpenGL41/OpenGL41.cpp
    Graphics/OpenGL41/OpenGL41DataBuffer.cpp
    Graphics/OpenGL41/OpenGL41Extensions.h
    Graphics/OpenGL41/OpenGL41RenderTarget.cpp
    Graphics/OpenGL41/OpenGL41ShaderProgram.h
    Graphics/OpenGL41/OpenGL41Texture.cpp
)
source_group(Graphics\\OpenGL41 FILES ${GRAPHICS_OPENGL_41_SRC})
list(APPEND SOURCES ${GRAPHICS_OPENGL_41_SRC})

set(GRAPHICS_OPENGLES2_SRC
    Graphics/OpenGLES2/OpenGLES2.h
    Graphics/OpenGLES2/OpenGLES2.cpp
    Graphics/OpenGLES2/OpenGLES2DataBuffer.cpp
    Graphics/OpenGLES2/OpenGLES2Extensions.h
    Graphics/OpenGLES2/OpenGLES2Extensions.cpp
    Graphics/OpenGLES2/OpenGLES2RenderTarget.cpp
    Graphics/OpenGLES2/OpenGLES2ShaderProgram.h
    Graphics/OpenGLES2/OpenGLES2Texture.cpp
)
source_group(Graphics\\OpenGLES2 FILES ${GRAPHICS_OPENGLES2_SRC})
list(APPEND SOURCES ${GRAPHICS_OPENGLES2_SRC})

set(GRAPHICS_OPENGL_SHARED_SRC
    Graphics/OpenGLShared/OpenGLBase.h
    Graphics/OpenGLShared/OpenGLShaderConstantCoreShared.h
    Graphics/OpenGLShared/OpenGLShaderProgramCoreShared.h
    Graphics/OpenGLShared/OpenGLShared.h
)
source_group(Graphics\\OpenGLShared FILES ${GRAPHICS_OPENGL_SHARED_SRC})
list(APPEND SOURCES ${GRAPHICS_OPENGL_SHARED_SRC})

set(GRAPHICS_STATES_SRC
    Graphics/States/CachedState.h
    Graphics/States/IndexedCachedState.h
    Graphics/States/SimpleCachedState.h
    Graphics/States/StateCacher.h
    Graphics/States/StateCacher.cpp
    Graphics/States/States.h
    Graphics/States/States.cpp
    Graphics/States/StateTypes.h
    Graphics/States/StateTypes.cpp
)
source_group(Graphics\\States FILES ${GRAPHICS_STATES_SRC})
list(APPEND SOURCES ${GRAPHICS_STATES_SRC})

set(GRAPHICS_SRC
    Graphics/GraphicsInterface.h
    Graphics/GraphicsInterface.cpp
    Graphics/ShaderConstant.h
    Graphics/ShaderProgram.cpp
    Graphics/ShaderProgram.h
)
source_group(Graphics FILES ${GRAPHICS_SRC})
list(APPEND SOURCES ${GRAPHICS_SRC})

set(IMAGE_FORMATS_SRC
    Image/Formats/DDS.h
    Image/Formats/FreeImageIncludeWrapper.h
    Image/Formats/FreeImageLoader.h
    Image/Formats/LibJPEG.h
    Image/Formats/LibPNG.h
    Image/Formats/Meta.h
    Image/Formats/NativeImage.h
    Image/Formats/PVR.h
    Image/Formats/VTF.h
)
source_group(Image\\Formats FILES ${IMAGE_FORMATS_SRC})
list(APPEND SOURCES ${IMAGE_FORMATS_SRC})

set(IMAGE_SRC
    Image/DXT.cpp
    Image/Image.h
    Image/Image.cpp
    Image/ImageConversions.cpp
    Image/ImageFormatRegistry.h
    Image/ImageFormatRegistry.cpp
    Image/ImageTransforms.cpp
    Image/LightmapPacker.h
    Image/LightmapPacker.cpp
    Image/PVRTC.cpp
    Image/sRGB.cpp
)
source_group(Image FILES ${IMAGE_SRC})
list(APPEND SOURCES ${IMAGE_SRC})

set(MATH_SRC
    Math/AABB.h
    Math/AABB.cpp
    Math/Color.h
    Math/Color.cpp
    Math/ConvexHull.h
    Math/ConvexHull.cpp
    Math/HashFunctions.h
    Math/HashFunctions.cpp
    Math/Interpolate.h
    Math/InterpolatedLookupTable.h
    Math/Line.h
    Math/MathCommon.h
    Math/MathCommon.cpp
    Math/Matrix3.h
    Math/Matrix3.cpp
    Math/Matrix4.h
    Math/Matrix4.cpp
    Math/Noise.h
    Math/Noise.cpp
    Math/Plane.h
    Math/Plane.cpp
    Math/Quaternion.h
    Math/Quaternion.cpp
    Math/RandomNumberGenerator.h
    Math/RandomNumberGenerator.cpp
    Math/Ray.h
    Math/Rect.h
    Math/Rect.cpp
    Math/SimpleTransform.h
    Math/Sphere.h
    Math/Sphere.cpp
    Math/Vec2.h
    Math/Vec2i.h
    Math/Vec3.h
    Math/WeightedFilter.h
)
source_group(Math FILES ${MATH_SRC})
list(APPEND SOURCES ${MATH_SRC})

if( CARBON_INCLUDE_BULLET )
    set(BULLET_SRC
        Physics/Bullet/Bullet.h
        Physics/Bullet/Bullet.cpp
        Physics/Bullet/BulletIncludeWrapper.h
        Physics/Bullet/KinematicCharacterController.h
        Physics/Bullet/KinematicCharacterController.cpp
    )
    source_group(Physics\\Bullet FILES ${BULLET_SRC})
    list(APPEND SOURCES ${BULLET_SRC})
endif()

if( CARBON_INCLUDE_PHYSX)
    set(PHYSX_SRC
        Physics/PhysX/PhysX.h
        Physics/PhysX/PhysX.cpp
        Physics/PhysX/PhysXIncludeWrapper.h
    )
    source_group(Physics\\PhysX FILES ${PHYSX_SRC})
    list(APPEND SOURCES ${PHYSX_SRC})
endif()

set(PHYSICS_SRC
    Physics/PhysicsInterface.h
    Physics/PhysicsInterface.cpp
    Physics/PhysicsIntersectResult.h
)
source_group(Physics FILES ${PHYSICS_SRC})
list(APPEND SOURCES ${PHYSICS_SRC})

set(PLATFORM_ANDROID_SRC
    Platform/Android/PlatformAndroid.h
    Platform/Android/PlatformAndroid.cpp
)
source_group(Platform\\Android FILES ${PLATFORM_ANDROID_SRC})
list(APPEND SOURCES ${PLATFORM_ANDROID_SRC})

if(APPLE)
    set(PLATFORM_IOS_SRC
        Platform/iOS/PlatformiOS.h
        Platform/iOS/PlatformiOS.mm
    )
    source_group(Platform\\iOS FILES ${PLATFORM_IOS_SRC})
    list(APPEND SOURCES ${PLATFORM_IOS_SRC})

    set(PLATFORM_MACOS_SRC
        Platform/macOS/PlatformMacOS.h
        Platform/macOS/PlatformMacOS.mm
    )
    source_group(Platform\\macOS FILES ${PLATFORM_MACOS_SRC})
    list(APPEND SOURCES ${PLATFORM_MACOS_SRC})
endif()

set(PLATFORM_SDL_SRC
    Platform/SDL/PlatformSDL.h
    Platform/SDL/PlatformSDL.cpp
)
source_group(Platform\\SDL FILES ${PLATFORM_SDL_SRC})
list(APPEND SOURCES ${PLATFORM_SDL_SRC})

if(MSVC)
    set(PLATFORM_WINDOWS_SRC
        Platform/Windows/PlatformWindows.h
        Platform/Windows/PlatformWindows.cpp
    )
    source_group(Platform\\Windows FILES ${PLATFORM_WINDOWS_SRC})
    list(APPEND SOURCES ${PLATFORM_WINDOWS_SRC})
endif()

set(PLATFORM_SRC
    Platform/Console.h
    Platform/Console.cpp
    Platform/ConsoleCommand.h
    Platform/ForceFeedbackEffects.h
    Platform/FrameTimers.h
    Platform/FrameTimers.cpp
    Platform/GameControllerState.h
    Platform/KeyConstant.h
    Platform/KeyConstant.cpp
    Platform/MouseButton.h
    Platform/PeriodicTimer.h
    Platform/PeriodicTimer.cpp
    Platform/PlatformEvents.h
    Platform/PlatformInterface.h
    Platform/PlatformInterface.cpp
    Platform/Resolution.h
    Platform/ScopedTimer.h
    Platform/ScopedTimer.cpp
    Platform/SimpleTimer.h
    Platform/SimpleTimer.cpp
    Platform/TextInput.h
    Platform/TextInput.cpp
    Platform/ThemeManager.h
    Platform/ThemeManager.cpp
    Platform/TimeValue.h
    Platform/TimeValue.cpp
)
source_group(Platform FILES ${PLATFORM_SRC})
list(APPEND SOURCES ${PLATFORM_SRC})

set(RENDER_SHADERS_SRC
    Render/Shaders/AmbientOcclusionGLSL.cpp
    Render/Shaders/AmbientOcclusionGLSL.h
    Render/Shaders/BaseColored.h
    Render/Shaders/BaseSkyDome.h
    Render/Shaders/BaseSurface.h
    Render/Shaders/Blending.h
    Render/Shaders/Blending.cpp
    Render/Shaders/DecalMappingGLSL.h
    Render/Shaders/DecalMappingGLSL.cpp
    Render/Shaders/InternalDeferredLightingDirectionalLight.h
    Render/Shaders/InternalDeferredLightingSetup.h
    Render/Shaders/InternalDeferredLightingSurface.h
    Render/Shaders/InternalFont.h
    Render/Shaders/InternalGeometryClipmapping.h
    Render/Shaders/InternalShadowMapping.h
    Render/Shaders/InternalSprite.h
    Render/Shaders/NormalMapping.h
    Render/Shaders/ParallaxMappingGLSL.h
    Render/Shaders/ParallaxMappingGLSL.cpp
    Render/Shaders/PostProcessAdd.h
    Render/Shaders/PostProcessBloom.h
    Render/Shaders/PostProcessBlur.h
    Render/Shaders/PostProcessBrightPass.h
    Render/Shaders/PostProcessColor.h
    Render/Shaders/PostProcessDepthOfField.h
    Render/Shaders/PostProcessPassThrough.h
    Render/Shaders/PostProcessScattering.h
    Render/Shaders/PostProcessToneMapping.h
    Render/Shaders/SFXBlur.h
    Render/Shaders/SFXEdge.h
    Render/Shaders/SFXMirror.h
    Render/Shaders/SFXWater.h
    Render/Shaders/Shader.h
    Render/Shaders/Shader.cpp
    Render/Shaders/ShaderRegistry.h
    Render/Shaders/ShaderRegistry.cpp
    Render/Shaders/ShadowMappingGLSL.h
    Render/Shaders/ShadowMappingGLSL.cpp
    Render/Shaders/SkeletalAnimationGLSL.h
    Render/Shaders/SpecularGLSL.h
    Render/Shaders/SpecularGLSL.cpp
    Render/Shaders/VertexColor.h
)
source_group(Render\\Shaders FILES ${RENDER_SHADERS_SRC})
list(APPEND SOURCES ${RENDER_SHADERS_SRC})

set(RENDER_TEXTURE_SRC
    Render/Texture/Texture.h
    Render/Texture/Texture.cpp
    Render/Texture/Texture2D.h
    Render/Texture/Texture2D.cpp
    Render/Texture/Texture3D.h
    Render/Texture/Texture3D.cpp
    Render/Texture/TextureCubemap.h
    Render/Texture/TextureCubemap.cpp
    Render/Texture/TextureManager.h
    Render/Texture/TextureManager.cpp
    Render/Texture/TextureProperties.h
)
source_group(Render\\Texture FILES ${RENDER_TEXTURE_SRC})
list(APPEND SOURCES ${RENDER_TEXTURE_SRC})

set(RENDER_SRC
    Render/DataBufferManager.h
    Render/DataBufferManager.cpp
    Render/DrawItem.h
    Render/Effect.h
    Render/Effect.cpp
    Render/EffectManager.h
    Render/EffectManager.cpp
    Render/EffectQueue.h
    Render/EffectQueueArray.h
    Render/EffectQueueArray.cpp
    Render/Font.h
    Render/Font.cpp
    Render/FontManager.h
    Render/FontManager.cpp
    Render/FreeTypeIncludeWrapper.h
    Render/GeometryChunk.h
    Render/GeometryChunk.cpp
    Render/Renderer.h
    Render/Renderer.cpp
    Render/RendererDebugOverlays.cpp
    Render/RendererDeferredLighting.cpp
    Render/RendererDraw.cpp
    Render/RendererPostProcess.cpp
    Render/RenderEvents.h
    Render/RenderQueueItem.h
    Render/RenderQueueItemArray.h
    Render/RenderQueueItemArray.cpp
    Render/RenderTarget.h
    Render/RenderTarget.cpp
    Render/VertexStream.h
    Render/VertexStream.cpp
)
source_group(Render FILES ${RENDER_SRC})
list(APPEND SOURCES ${RENDER_SRC})

set(SCENE_ENTITY_SRC
  Scene/EntityController/AlphaFadeEntityController.h
  Scene/EntityController/EntityController.h
  Scene/EntityController/EntityController.cpp
  Scene/EntityController/PlatformerEntityController.h
  Scene/EntityController/PlatformerEntityController.cpp
  Scene/EntityController/PlayerEntityController.h
  Scene/EntityController/PlayerEntityController.cpp
  Scene/EntityController/SetOrientationEntityController.h
  Scene/EntityController/TargetPositionEntityController.h
)
source_group(Scene\\EntityController FILES ${SCENE_ENTITY_SRC})
list(APPEND SOURCES ${SCENE_ENTITY_SRC})

set(SCENE_GUI_SRC
    Scene/GUI/GUIButton.h
    Scene/GUI/GUIButton.cpp
    Scene/GUI/GUICombobox.h
    Scene/GUI/GUICombobox.cpp
    Scene/GUI/GUIConsoleWindow.h
    Scene/GUI/GUIConsoleWindow.cpp
    Scene/GUI/GUIEditbox.h
    Scene/GUI/GUIEditbox.cpp
    Scene/GUI/GUIEvents.h
    Scene/GUI/GUIEvents.cpp
    Scene/GUI/GUILabel.h
    Scene/GUI/GUILabel.cpp
    Scene/GUI/GUIMousePointer.h
    Scene/GUI/GUIMousePointer.cpp
    Scene/GUI/GUIProgressBar.h
    Scene/GUI/GUIProgressBar.cpp
    Scene/GUI/GUISlider.h
    Scene/GUI/GUISlider.cpp
    Scene/GUI/GUIWindow.h
    Scene/GUI/GUIWindow.cpp
)
source_group(Scene\\GUI FILES ${SCENE_GUI_SRC})
list(APPEND SOURCES ${SCENE_GUI_SRC})

set(SCENE_MESH_SRC
    Scene/Mesh/Mesh.h
    Scene/Mesh/Mesh.cpp
    Scene/Mesh/MeshFormatRegistry.h
    Scene/Mesh/MeshFormatRegistry.cpp
    Scene/Mesh/MeshManager.h
    Scene/Mesh/MeshManager.cpp
    Scene/Mesh/OpenAssetImport.h
    Scene/Mesh/OpenAssetImportIncludeWrapper.h
)
source_group(Scene\\Mesh FILES ${SCENE_MESH_SRC})
list(APPEND SOURCES ${SCENE_MESH_SRC})

set(SCENE_SRC
    Scene/ABTCompiler.h
    Scene/ABTCompiler.cpp
    Scene/Camera.h
    Scene/Camera.cpp
    Scene/ComplexEntity.h
    Scene/ComplexEntity.cpp
    Scene/CullingNode.h
    Scene/CullingNode.cpp
    Scene/Entity.h
    Scene/Entity.cpp
    Scene/GeometryGather.h
    Scene/GeometryGather.cpp
    Scene/IntersectionResult.h
    Scene/Light.h
    Scene/Light.cpp
    Scene/Material.h
    Scene/Material.cpp
    Scene/MaterialManager.h
    Scene/MaterialManager.cpp
    Scene/Region.h
    Scene/Region.cpp
    Scene/Scene.h
    Scene/Scene.cpp
    Scene/SceneEvents.h
    Scene/SkeletalAnimation.h
    Scene/SkeletalAnimation.cpp
    Scene/SkeletalMesh.h
    Scene/SkeletalMesh.cpp
    Scene/SkyDome.h
    Scene/SkyDome.cpp
    Scene/SoundEmitter.h
    Scene/SoundEmitter.cpp
    Scene/SoundListener.h
    Scene/Terrain.h
    Scene/Terrain.cpp
)
source_group(Scene FILES ${SCENE_SRC})
list(APPEND SOURCES ${SCENE_SRC})

set(SCRIPTING_SRC
    Scripting/AngelScriptIncludeWrapper.h
    Scripting/ScriptFunctions.cpp
    Scripting/ScriptManager.h
    Scripting/ScriptManager.cpp
)
source_group(Scripting FILES ${SCRIPTING_SRC})
list(APPEND SOURCES ${SCRIPTING_SRC})

set(SOUND_FORMATS_SRC
    Sound/Formats/WavLoader.h
)
source_group(Sound\\Formats FILES ${SOUND_FORMATS_SRC})
list(APPEND SOURCES ${SOUND_FORMATS_SRC})

if(CARBON_INCLUDE_VORBIS)
    set(SOUND_FORMATS_SRC
        Sound/Formats/OggVorbisIncludeWrapper.h
        Sound/Formats/OggVorbisLoader.h
    )
    source_group(Sound\\Formats FILES ${SOUND_FORMATS_SRC})
    list(APPEND SOURCES ${SOUND_FORMATS_SRC})
endif()

if(CARBON_INCLUDE_OPENAL)
    set(SOUND_OPENAL_SRC
        Sound/OpenAL/OpenAL.h
        Sound/OpenAL/OpenAL.cpp
    )
    source_group(Sound\\OpenAL FILES ${SOUND_OPENAL_SRC})
    list(APPEND SOURCES ${SOUND_OPENAL_SRC})
endif()

set(SOUND_SRC
    Sound/SoundEvents.h
    Sound/SoundFormatRegistry.h
    Sound/SoundFormatRegistry.cpp
    Sound/SoundInterface.h
    Sound/SoundInterface.cpp
    Sound/SoundShader.h
    Sound/SoundShader.cpp
    Sound/SoundShaderManager.h
    Sound/SoundShaderManager.cpp
)
source_group(Sound FILES ${SOUND_SRC})
list(APPEND SOURCES ${SOUND_SRC})

set(CARBON_ENGINE_SRC
    APIReference.h
    Application.h
    Application.cpp
    CarbonEngine.h
    Common.h
    Common.cpp
    ConsoleCommands.h
    EngineAssets.h
    EntryPoint.h
    Globals.h
    Globals.cpp
    Resource.h
)
source_group("" FILES ${CARBON_ENGINE_SRC})
list(APPEND SOURCES ${CARBON_ENGINE_SRC})

if(APPLE)
    set(CARBON_ENGINE_SRC_APPLE
        EntryPointiOS.mm
        EntryPointMacOS.mm
    )
    source_group("" FILES ${CARBON_ENGINE_SRC})
    list(APPEND SOURCES ${CARBON_ENGINE_SRC_APPLE})
endif()

if( CARBON_STATIC_LIBRARY )
    add_library(CarbonEngine STATIC ${SOURCES})
    target_compile_definitions(CarbonEngine PUBLIC CARBON_STATIC_LIBRARY)
else()
    add_library(CarbonEngine SHARED ${SOURCES})
    target_compile_definitions(CarbonEngine PRIVATE CARBON_EXPORTS)

	# Make all non-exported symbols are hidden by default (similar to Windows)
	set_target_properties(CarbonEngine
		PROPERTIES
			C_VISIBILITY_PRESET hidden
			CXX_VISIBILITY_PRESET hidden
	)

	# If using cpack, we have to distribute the dynamic library as well
	if (WIN32)
		# Install dll only, not the import library
		install(TARGETS CarbonEngine RUNTIME DESTINATION .)
	else()
		install(TARGETS CarbonEngine DESTINATION .)
    endif()
endif()

target_include_directories(CarbonEngine PUBLIC
    "${CMAKE_SOURCE_DIR}/Source"
)

if(MSVC)
    target_sources(CarbonEngine PUBLIC CarbonEngine.natvis)
    target_compile_options(CarbonEngine PRIVATE /MP)
endif()

if(CARBON_INCLUDE_ANGELSCRIPT)
    message("-- AngelScript included in this build")
    set(CARBON_ANGELSCRIPT_INCLUDE "${CMAKE_SOURCE_DIR}/Dependencies/AngelScript-2.31.1/Source/include")
    set(CARBON_ANGELSCRIPT_LIBRARY "${CMAKE_SOURCE_DIR}/Dependencies/AngelScript-2.31.1/Library/Windows/angelscript64d.lib")
    target_include_directories(CarbonEngine PUBLIC ${CARBON_ANGELSCRIPT_INCLUDE})
    target_link_libraries(CarbonEngine PRIVATE ${CARBON_ANGELSCRIPT_LIBRARY})
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_ANGELSCRIPT)
endif()

if(CARBON_INCLUDE_BULLET)
    message("-- Bullet included in this build")
    find_package(Bullet CONFIG REQUIRED)
    target_link_libraries(CarbonEngine PRIVATE LinearMath Bullet3Common BulletDynamics BulletCollision)
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_BULLET)
endif()

if(CARBON_INCLUDE_PHYSX)
    message("-- PhysX included in this build")
    find_package(physx REQUIRED)
endif()

if(CARBON_INCLUDE_FREEIMAGE)
    message("-- FreeImage included in this build")
    find_package(freeimage CONFIG REQUIRED)
    target_link_libraries(CarbonEngine PRIVATE freeimage::FreeImage)
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_FREEIMAGE)
endif()

if(CARBON_INCLUDE_FREETYPE)
    message("-- FreeType included in this build")
    find_package(freetype CONFIG REQUIRED)
    target_link_libraries(CarbonEngine PRIVATE freetype)
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_FREETYPE)
endif()

if(CARBON_INCLUDE_OCCULUSRIFT)
    message("-- OcculusRift included in this build")
    set(CARBON_OCCULUSRIFT_INCLUDE "${CMAKE_SOURCE_DIR}/Dependencies/OcculusRift-1.6/Source/LibOVR/Include")
    set(CARBON_OCCULUSRIFT_LIBRARY "${CMAKE_SOURCE_DIR}/Dependencies/OcculusRift-1.6/Library")
    target_include_directories(CarbonEngine PUBLIC ${CARBON_OCCULUSRIFT_INCLUDE})
    target_link_libraries(CarbonEngine PRIVATE ${CARBON_OCCULUSRIFT_LIBRARY})
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_OCCULUSRIFT)
endif()

if(CARBON_INCLUDE_OPENAL)
    message("-- OpenAL included in this build")
    find_package(OpenAL CONFIG REQUIRED)
    if(WIN32)
        target_link_libraries(CarbonEngine PRIVATE OpenAL::OpenAL winmm)
    else()
        target_link_libraries(CarbonEngine PRIVATE OpenAL::OpenAL)
    endif()
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_OPENAL)
endif()

if(CARBON_INCLUDE_VORBIS)
    message("-- Ogg Vorbis included in this build")
    find_package(Vorbis CONFIG REQUIRED)
    find_package(Ogg CONFIG REQUIRED)
    target_link_libraries(CarbonEngine PRIVATE Vorbis::vorbisfile Ogg::ogg)
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_VORBIS)
endif()

if(CARBON_INCLUDE_OPENASSETIMPORT)
    message("-- Open Asset Import included in this build")
    find_package(assimp CONFIG REQUIRED)
    target_link_libraries(CarbonEngine PRIVATE assimp::assimp)
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_OPENASSETIMPORT)
endif()

if(CARBON_INCLUDE_ZLIB)
    message("-- ZLib included in this build")
    find_package(ZLIB REQUIRED)
    target_link_libraries(CarbonEngine PRIVATE ZLIB::ZLIB)
    target_compile_definitions(CarbonEngine PRIVATE CARBON_INCLUDE_ZLIB)
endif()


if(WIN32)
    target_compile_definitions(CarbonEngine PRIVATE 
        CARBON_INCLUDE_PLATFORM_WINDOWS
        CARBON_INCLUDE_OPENGL11
    )
elseif(APPLE)
    target_compile_definitions(CarbonEngine PRIVATE 
        CARBON_INCLUDE_PLATFORM_IOS
        CARBON_INCLUDE_PLATFORM_MACOS
    )
endif()