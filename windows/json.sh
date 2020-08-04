DOWNLOAD_URL=https://github.com/nlohmann/json/archive/v3.9.0.tar.gz
INSTALL_DIR=json-3.9.0

curl -L $DOWNLOAD_URL | tar -xz
mv json-* source & mkdir build

cmake -S source -B build -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=Release
cmake --build build --target install

rm -rf source build
