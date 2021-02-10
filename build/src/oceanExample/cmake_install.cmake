# Install script for directory: /home/akhi/Documents/projects/osgocean/src/oceanExample

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
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/oceanExample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/oceanExample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/oceanExample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/oceanExample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/home/akhi/Documents/projects/osgocean/build/bin/oceanExample")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/oceanExample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/oceanExample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/oceanExample"
         OLD_RPATH "/home/akhi/Documents/projects/osgocean/build/lib:/home/akhi/Documents/projects/osg/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/oceanExample")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/textures/sky_clear/down.png;/usr/local/bin/resources/textures/sky_clear/east.png;/usr/local/bin/resources/textures/sky_clear/north.png;/usr/local/bin/resources/textures/sky_clear/south.png;/usr/local/bin/resources/textures/sky_clear/up.png;/usr/local/bin/resources/textures/sky_clear/west.png")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/textures/sky_clear" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_clear/down.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_clear/east.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_clear/north.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_clear/south.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_clear/up.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_clear/west.png"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/textures/sky_dusk/down.png;/usr/local/bin/resources/textures/sky_dusk/east.png;/usr/local/bin/resources/textures/sky_dusk/north.png;/usr/local/bin/resources/textures/sky_dusk/south.png;/usr/local/bin/resources/textures/sky_dusk/up.png;/usr/local/bin/resources/textures/sky_dusk/west.png")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/textures/sky_dusk" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_dusk/down.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_dusk/east.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_dusk/north.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_dusk/south.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_dusk/up.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_dusk/west.png"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/textures/sky_fair_cloudy/down.png;/usr/local/bin/resources/textures/sky_fair_cloudy/east.png;/usr/local/bin/resources/textures/sky_fair_cloudy/north.png;/usr/local/bin/resources/textures/sky_fair_cloudy/south.png;/usr/local/bin/resources/textures/sky_fair_cloudy/up.png;/usr/local/bin/resources/textures/sky_fair_cloudy/west.png")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/textures/sky_fair_cloudy" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_fair_cloudy/down.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_fair_cloudy/east.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_fair_cloudy/north.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_fair_cloudy/south.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_fair_cloudy/up.png"
    "/home/akhi/Documents/projects/osgocean/demo/textures/sky_fair_cloudy/west.png"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/shaders/terrain.vert;/usr/local/bin/resources/shaders/terrain.frag;/usr/local/bin/resources/shaders/terrain_lispsm.vert;/usr/local/bin/resources/shaders/terrain_lispsm.frag;/usr/local/bin/resources/shaders/skydome.vert;/usr/local/bin/resources/shaders/skydome.frag")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/shaders" TYPE FILE FILES
    "/home/akhi/Documents/projects/osgocean/resources/shaders/terrain.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/terrain.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/terrain_lispsm.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/terrain_lispsm.frag"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/skydome.vert"
    "/home/akhi/Documents/projects/osgocean/resources/shaders/skydome.frag"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/island/islands.ive")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/island" TYPE FILE FILES "/home/akhi/Documents/projects/osgocean/demo/island/islands.ive")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/resources/boat/boat.3ds")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/resources/boat" TYPE FILE FILES "/home/akhi/Documents/projects/osgocean/resources/boat/boat.3ds")
endif()

