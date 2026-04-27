" let g:cmake_generate_options = ['-GNinja', '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON']
"
" " Force the build directory to be relative to the detected project root
let g:cmake_build_dir_location = 'build'
let g:cmake_root_markers = ['CMakeLists.txt', '.git']
let g:cmake_link_compile_commands = 1

