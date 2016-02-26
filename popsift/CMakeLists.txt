FILE( GLOB_RECURSE
      src_files_cu
      ./src/*.cu
      ./common/*.cu )

FILE( GLOB_RECURSE
      src_files_cpp
      ./src/*.cpp
      ./common/*.cpp )

FILE( GLOB_RECURSE
      src_files_h
      ./src/*.h
      ./common/*.h )

set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR})

include_directories(${CMAKE_SOURCE_DIR}/popsift/common)

CUDA_ADD_LIBRARY(popsift STATIC ${src_files_cu} ${src_files_cpp})

install(TARGETS popsift 
        EXPORT popsiftTargets
        ARCHIVE DESTINATION lib)
install(FILES ${src_files_h} DESTINATION include) 
