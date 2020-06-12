DOWNLOAD_URL=https://github.com/nlohmann/json/archive/v3.7.3.tar.gz
INSTALL_DIR=json-3.7.3

wget -c $DOWNLOAD_URL -O - | tar -xz
mv json-* source & mkdir build

cmake -S source -B build -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=Release
cmake --build build --target install

rm -rf source build
