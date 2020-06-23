DOWNLOAD_URL=https://github.com/stevengj/nlopt/archive/v2.6.2.tar.gz
INSTALL_DIR=nlopt-2.6.2

curl -L $DOWNLOAD_URL | tar -xz
mv nlopt-* source & mkdir build

cmake -S source -B build -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DNLOPT_GUILE=OFF -DNLOPT_MATLAB=OFF -DNLOPT_OCTAVE=OFF -DNLOPT_PYTHON=OFF -DNLOPT_SWIG=OFF
cmake --build build --target install

rm -rf source build
