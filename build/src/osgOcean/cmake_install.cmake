# Install script for directory: /home/akhi/Documents/projects/osgocean/src/osgOcean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libosgOcean.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/home/akhi/Documents/projects/osgocean/build/lib/libosgOcean.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so"
         OLD_RPATH "/home/akhi/Documents/projects/osg/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libosgOcean.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/osgOcean/Cylinder;/usr/local/include/osgOcean/DistortionSurface;/usr/local/include/osgOcean/FFTOceanTechnique;/usr/local/include/osgOcean/FFTOceanSurface;/usr/local/include/osgOcean/FFTOceanSurfaceVBO;/usr/local/include/osgOcean/FFTSimulation;/usr/local/include/osgOcean/GodRays;/usr/local/include/osgOcean/GodRayBlendSurface;/usr/local/include/osgOcean/MipmapGeometry;/usr/local/include/osgOcean/MipmapGeometryVBO;/usr/local/include/osgOcean/OceanScene;/usr/local/include/osgOcean/OceanTechnique;/usr/local/include/osgOcean/OceanTile;/usr/local/include/osgOcean/RandUtils;/usr/local/include/osgOcean/ScreenAlignedQuad;/usr/local/include/osgOcean/ShaderManager;/usr/local/include/osgOcean/SiltEffect;/usr/local/include/osgOcean/WaterTrochoids;/usr/local/include/osgOcean/Export;/usr/local/include/osgOcean/Version")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/osgOcean" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/Cylinder"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/DistortionSurface"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/FFTOceanTechnique"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/FFTOceanSurface"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/FFTOceanSurfaceVBO"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/FFTSimulation"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/GodRays"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/GodRayBlendSurface"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/MipmapGeometry"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/MipmapGeometryVBO"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/OceanScene"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/OceanTechnique"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/OceanTile"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/RandUtils"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/ScreenAlignedQuad"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/ShaderManager"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/SiltEffect"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/WaterTrochoids"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/Export"
    "/home/akhi/Documents/projects/osgocean/include/osgOcean/Version"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/shaders/osgOcean_ocean_surface.frag;/usr/local/bin/resources/shaders/osgOcean_ocean_surface.vert;/usr/local/bin/resources/shaders/osgOcean_ocean_surface_vbo.vert;/usr/local/bin/resources/shaders/osgOcean_godrays.vert;/usr/local/bin/resources/shaders/osgOcean_godrays.frag;/usr/local/bin/resources/shaders/osgOcean_godray_screen_blend.vert;/usr/local/bin/resources/shaders/osgOcean_godray_screen_blend.frag;/usr/local/bin/resources/shaders/osgOcean_godray_glare.vert;/usr/local/bin/resources/shaders/osgOcean_godray_glare.frag;/usr/local/bin/resources/shaders/osgOcean_silt_quads.vert;/usr/local/bin/resources/shaders/osgOcean_silt_quads.frag;/usr/local/bin/resources/shaders/osgOcean_silt_points.vert;/usr/local/bin/resources/shaders/osgOcean_silt_points.frag;/usr/local/bin/resources/shaders/osgOcean_streak.vert;/usr/local/bin/resources/shaders/osgOcean_streak.frag;/usr/local/bin/resources/shaders/osgOcean_glare_composite.vert;/usr/local/bin/resources/shaders/osgOcean_glare_composite.frag;/usr/local/bin/resources/shaders/osgOcean_downsample_glare.frag;/usr/local/bin/resources/shaders/osgOcean_downsample.vert;/usr/local/bin/resources/shaders/osgOcean_downsample.frag;/usr/local/bin/resources/shaders/osgOcean_gaussian.vert;/usr/local/bin/resources/shaders/osgOcean_gaussian1.frag;/usr/local/bin/resources/shaders/osgOcean_gaussian2.frag;/usr/local/bin/resources/shaders/osgOcean_dof_combiner.vert;/usr/local/bin/resources/shaders/osgOcean_dof_combiner.frag;/usr/local/bin/resources/shaders/osgOcean_water_distortion.vert;/usr/local/bin/resources/shaders/osgOcean_water_distortion.frag;/usr/local/bin/resources/shaders/osgOcean_ocean_scene.vert;/usr/local/bin/resources/shaders/osgOcean_ocean_scene.frag;/usr/local/bin/resources/shaders/osgOcean_ocean_scene_lispsm.vert;/usr/local/bin/resources/shaders/osgOcean_ocean_scene_lispsm.frag;/usr/local/bin/resources/shaders/osgOcean_heightmap.vert;/usr/local/bin/resources/shaders/osgOcean_heightmap.frag")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/shaders" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_surface.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_surface.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_surface_vbo.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_godrays.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_godrays.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_godray_screen_blend.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_godray_screen_blend.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_godray_glare.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_godray_glare.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_silt_quads.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_silt_quads.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_silt_points.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_silt_points.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_streak.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_streak.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_glare_composite.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_glare_composite.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_downsample_glare.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_downsample.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_downsample.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_gaussian.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_gaussian1.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_gaussian2.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_dof_combiner.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_dof_combiner.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_water_distortion.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_water_distortion.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_scene.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_scene.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_scene_lispsm.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_ocean_scene_lispsm.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_heightmap.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/osgOcean_heightmap.frag"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/textures/sea_foam.png;/usr/local/bin/resources/textures/sun_glare.png")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/textures" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/resources/textures/sea_foam.png"
    "/home/akhi/Documents/projects/osgocean/resources/textures/sun_glare.png"
    )
endif()

