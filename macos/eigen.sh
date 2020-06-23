DOWNLOAD_URL=https://gitlab.com/libeigen/eigen/-/archive/6228f27234ca84545e711fb27b7850f6829af3d9/eigen-6228f27234ca84545e711fb27b7850f6829af3d9.tar.gz
INSTALL_DIR=eigen-3.3.9-master

curl -L $DOWNLOAD_URL | tar -xz
mv eigen-* source & mkdir build

cmake -S source -B build -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=Release
cmake --build build --target install

rm -rf source build
