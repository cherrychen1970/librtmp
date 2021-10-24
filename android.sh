export NDK=~/Library/Android/sdk/ndk/21.4.7075529
# Set this to your minSdkVersion.
export API=30
# Only choose one of these, depending on your device...
#export ANDROID_ARCH=armv7a
#export TARGET_POSTFIX=linux-androideabi

#export ANDROID_ARCH=aarch64 # arm64-v8a
#export ANDROID_ARCH=i686 #x86
export ANDROID_ARCH=x86_64

export TARGET_POSTFIX=linux-android
#######################################################################

#export TARGET=armv7a-linux-androideabi # this should be manual
export TARGET=$ANDROID_ARCH-$TARGET_POSTFIX
export ANDROID_LIB=$HOME/works/libs/android-$ANDROID_ARCH

# Only choose one of these, depending on your build machine...
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64
#export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64

# cross compiler
export AR=$TOOLCHAIN/bin/llvm-ar
export RANLIB=$TOOLCHAIN/bin/llvm-ranlib
export CC=$TOOLCHAIN/bin/$TARGET$API-clang 

# for rtmp 
export SYS=posix
export LIBS_ROOT=${HOME}/works/libs/android-$ANDROID_ARCH
# Build.
#make  librtmp/librtmp.a