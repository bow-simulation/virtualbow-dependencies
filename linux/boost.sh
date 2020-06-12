DOWNLOAD_URL=https://dl.bintray.com/boostorg/release/1.73.0/source/boost_1_73_0.tar.gz
INSTALL_DIR=boost-1.73.0

wget -c $DOWNLOAD_URL -O - | tar -xz
mv boost_* source

cd source
./bootstrap.sh --prefix=../$INSTALL_DIR
./b2  --prefix=../$INSTALL_DIR install

cd ..
rm -rf source
