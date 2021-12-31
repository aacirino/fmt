cmake .. -GNinja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DCMAKE_CXX_COMPILER:STRING=clang++ \
    -DCMAKE_CXX_FLAGS:STRING="-I$(brew --prefix)/opt/llvm/include -I$(brew --prefix)/opt/llvm/include/c++/v1 -I/usr/local/include -march=native" \
    -DCMAKE_EXE_LINKER_FLAGS:STRING="$LDFLAGS -fuse-ld=mold" \
    -DCMAKE_MODULE_LINKER_FLAGS:STRING="$LDFLAGS -fuse-ld=mold" \
    -DCMAKE_SHARED_LINKER_FLAGS:STRING="$LDFLAGS -fuse-ld=mold" \
    -DCMAKE_LINKER:FILEPATH=$(which mold) \
    -DCMAKE_CXX_STANDARD=20
