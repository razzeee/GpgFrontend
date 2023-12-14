SET (CMAKE_GENERATOR "Ninja")

SET (CMAKE_C_FLAGS               "-Wall -std=c11")
SET (CMAKE_C_FLAGS_DEBUG         "-g -fsanitize=address -fsanitize-recover=address")
SET (CMAKE_C_FLAGS_MINSIZERE     "-Os -DNDEBUG")
SET (CMAKE_C_FLAGS_RELEASE        "-O3 -DNDEBUG")
SET (CMAKE_C_FLAGS_RELWITHDEBINFO "-O2 -g")

SET (CMAKE_CXX_FLAGS                "-Wall -std=c++17")
SET (CMAKE_CXX_FLAGS_DEBUG          "-g -fsanitize=address -fsanitize-recover=address")
SET (CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -DNDEBUG")
SET (CMAKE_CXX_FLAGS_RELEASE        "-O3 -DNDEBUG")
SET (CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")