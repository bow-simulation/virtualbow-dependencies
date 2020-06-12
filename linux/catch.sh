DOWNLOAD_URL=https://github.com/catchorg/Catch2/archive/v2.12.2.tar.gz
INSTALL_DIR=catch-2.12.2

wget -c $DOWNLOAD_URL -O - | tar -xz
mv Catch2-* source & mkdir build

cmake -S source -B build -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=Release
cmake --build build --target install

rm -rf source build
