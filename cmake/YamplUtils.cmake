##
# @author: Ayoub Chouak (a.chouak@protonmail.com)
# @brief:  CMake utilities for YAMPL
##

include(ExternalProject)

#
# @brief: Function to pull git external projects
#
# @param target:   Target name
# @param repo_url: Url to the repository
#
# @usage: AddExtProjectGit("<target name>", "<url to git repository>")
#
function(AddExtProjectGit target repo_url)
    string(TOLOWER ${target} target)
    set(proj_root ${CMAKE_BINARY_DIR}/${target})
     
    ExternalProject_Add(${target}
        GIT_REPOSITORY ${repo_url}
        PREFIX ${proj_root}
        UPDATE_COMMAND ""
        PATCH_COMMAND ""
        INSTALL_DIR ${ZEROMQ_ROOT}/bin
        BUILD_COMMAND ""
        TEST_COMMAND ""
    )
endfunction()

#
# @brief: Macro to set -std=c++14 independent of the CMake binary version
#
macro(USE_CXX14)
  if (CMAKE_VERSION VERSION_LESS "3.1")
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
    endif ()
  else ()
    set (CMAKE_CXX_STANDARD 11)
  endif ()
endmacro(USE_CXX14)
