ANDROID_ARCH=x86_64
OPENSSL_LIB=${HOME}/works/libs/android-$ANDROID_ARCH/ssl/1.0.2/lib
ANDROID_BIN_PATH=/data/local/tmp
#UPDATE
#if you are targeting sdk 29 or higher you CANNOT use the binary from your asset folder ! you have to copy your binary to jnilib folder then run it from native library directory ! context.getApplicationInfo().nativeLibraryDir
# publish files to android
adb push $OPENSSL_LIB/lib*.so.* $ANDROID_BIN_PATH/
adb push rtmpdump $ANDROID_BIN_PATH/
adb shell chmod 755 $ANDROID_BIN_PATH/rtmpdump

# run
adb shell LD_LIBRARY_PATH=/data/local/tmp /data/local/tmp/rtmpdump -r rtmps://10.0.2.2:9935/live/sample
