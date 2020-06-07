./configure \

# 通常是GNU标准中关闭动态链接库的选项
--disable-shared \

# Do not build the lame executable default=build
# 不编译出 LAME 的可执行文件
--disable-frontend \

# cross-compile to build programs to run on HOST [BUILD]
# 指定库最终要运行的平台
--host=arm-apple-darwin \

# By default, `make install' will install all the files in
# `/usr/local/bin', `/usr/local/lib' etc.  You can specify
# an installation prefix other than `/usr/local' using `--prefix',
# for instance `--prefix=$HOME'.
# 指定编译好的库放在哪个目录
--prefix="./thin/i386" \

# C compiler command
# 指定交叉工具编译链的路径
CC="xcrun -sdk iphoneos clang -arch i386" \

# C compiler flags
# 指定编译所带的参数。
# 这里指定编译的目标平台是i386，bitcode选项，编译的库最低支持的iOS版本
CFLAGS="-arch i386 -fembed-bitcode -miphones-version-min=7.0" \

# linker flags, e.g. -L<lib dir> if you have libraries in a nonstandard directory <lib dir>
# 指定链接过程中的参数，同样也需要带上bitcode选项以及开发者期望app支持的最低iOS版本
LDFLAGS="-arch i386 -fembed-bitcode -miphones-version-min=7.0"

make clean
make -j8
make install