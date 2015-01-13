set -e

if [ ! -f "/var/cache/libuv-$VERSION.tar.bz2" ]; then
  wget -q -O /var/cache/libuv-$VERSION.tar.gz https://github.com/joyent/libuv/archive/v${VERSION}.tar.gz
fi

tar zxf /var/cache/libuv-$VERSION.tar.gz

cd libuv-$VERSION
sh autogen.sh
./configure --prefix=/app/libuv
make
make install

cd /app
tar -zcf - libuv | /gof3r put --md5Check-off -b mono-dependencies -k $STACK/libuv-$VERSION.tar.gz
