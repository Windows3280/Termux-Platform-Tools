#!/data/data/com.termux/files/usr/bin/bash
echo Updating pkg repositories
pkg update
echo Upgrading packages
pkg upgrade -y
echo Installing dependencies
pkg  install coreutils gnupg wget -y
echo Adding repository
if [ ! -f "$PREFIX/etc/apt/sources.list.d/rendiix.list" ]; then
  mkdir -p $PREFIX/etc/apt/sources.list.d
  echo -e "deb https://rendiix.github.io android-tools termux" > $PREFIX/etc/apt/sources.list.d/rendiix.list 
  wget -qP $PREFIX/etc/apt/trusted.gpg.d https://rendiix.github.io/rendiix.gpg 
  pkg update -y
  pkg install platform-tools -y
else 
  echo "FAILED: repository already added. If you are trying to update ADB, use pkg install platform-tools."
  pkg install platform-tools -y
fi

echo "Done! Use adb or fastboot."
