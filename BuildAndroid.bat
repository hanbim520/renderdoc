rem mkdir build-android
rem cd build-android
rem cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a -G "MinGW Makefiles" ..
rem mingw32-make -j20

rem cd ..
rem mkdir build-android64
rem cd build-android64
rem cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a -G "MinGW Makefiles" ..
rem mingw32-make -j20


mkdir build-android
cd build-android
cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" ..
mingw32-make -j20

cd ..
mkdir build-android64
cd build-android64
cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" ..
mingw32-make -j32

cd ..