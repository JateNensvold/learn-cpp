cmake_minimum_required(VERSION 3.10) # Or a more recent version
project(MyProject CXX) # Or C if it's a C project

# Set the C++ standard (optional, but recommended)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Add this line, to enable compile command export
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Find source files
file(GLOB SOURCES "src/*.cpp") # Adjust the pattern as needed

# Add executable target
add_executable(MyProject ${SOURCES})

# Optional: Add compiler flags for Clang
target_compile_options(MyProject PRIVATE
    -Wall # Enable all warnings
    # -Wextra # Enable extra warnings
    # -Werror # Treat warnings as errors (optional)
    # Add other Clang-specific flags as needed
)

# Optional: Add link libraries
# target_link_libraries(MyProject
#    <your_library>
# )
