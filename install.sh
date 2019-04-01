#!/usr/bin/env bash
printf "\\e[93m=== LFMSync v0.1 - Developed by Robert Thomas ==="
printf "\\n=== https://github.com/Wolveix/LFMSync ===\\e[0m"
distro=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
case $distro in
  '"Debian GNU/Linux"' | '"Linux Mint"' | '"Ubuntu"')
    printf "\\n\\e[36mInstalling any missing dependencies.\\n\\e[94m"
    apt-get -qq -y update && apt-get -qq -y upgrade
    apt-get -qq -y install python3 unzip
    ;;
  *)
    printf "\\nIt doesn't look like your distro is supported.\\nCreate an issue here: https://github.com/Wolveix/LFMSync/issues/new\\n"
    exit
    ;;
esac
configpath="$HOME/.config/lfmsync"
mkdir -p "$configpath" /tmp/lfmsync
cd /tmp/lfmsync || exit
wget https://github.com/Wolveix/LFMSync/archive/master.zip 2>/dev/null
unzip master.zip
if [ ! -d LFMSync-master ]; then
  printf "\\nAn unexpected error occurred.\\n\\e[0m"
  exit 0
fi
cd LFMSync-master
mv config/export.py "$configpath/export.py"
mv config/scrobble.py "$configpath/scrobble.py"
mv config/sync.py "$configpath/sync.py"
chmod u+x lfmsync

OS="$(uname)"
case ${OS,,} in
  'linux')
    chmod 755 lfmsync
    chown root:root lfmsync
    mv lfmsync /usr/bin/lfmsync
    ;;
  'freebsd' | 'openbsd' | 'netbsd')
    chown root:wheel lfmsync
    mv lfmsync /usr/bin/lfmsync
    ;;
  'darwin' | 'osx')
    mkdir -p /usr/local/bin
    mv lfmsync /usr/local/bin/lfmsync
    ;;
  *)
    mv lfmsync /usr/local/bin/lfmsync
    ;;
esac
printf "\\n\\e[32mInstall completed!\\n"
printf "\\nPlease run 'lfmsync help' to see a list of available commands.\\n\\e[0m"
