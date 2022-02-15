cmake .. -GNinja -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -D CMAKE_CXX_COMPILER:STRING=clang++ \
    -D CMAKE_CXX_FLAGS:STRING="-I$(brew --prefix)/opt/llvm/include -I$(brew --prefix)/opt/llvm/include/c++/v1 -I/usr/local/include -isystem $(brew --prefix)/opt/llvm/include/c++/v1/include -march=native -stdlib=libc++" \
    -D CMAKE_EXE_LINKER_FLAGS:STRING="$LDFLAGS -fuse-ld=mold" \
    -D CMAKE_LINKER:FILEPATH=$(which mold) \
    -D CMAKE_CXX_STANDARD=20 \
    -D FMT_TEST:BOOL=ON \
    -D CMAKE_POSITION_INDEPENDENT_CODE=TRUE \
    -D CMAKE_INSTALL_INCLUDEDIR:PATH=include/fmt
