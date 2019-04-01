# LFMSync
A CLI tool for getting scrobbles from Last.FM and syncing them elsewhere.

## Install
### Automatic
You can automatically install LFMSync by running the following line via a supported command line interface:
``` shell
curl https://raw.githubusercontent.com/Wolveix/LFMSync/master/install.sh | sudo bash
```

### Manual
Alternatively, you can manually install LFMSync to a custom location on your device. You should install sudo if it doesn't already exist on your system.
Install any missing dependencies (Alpine):
``` shell
apk -qq update && apk -qq upgrade && apk -qq add curl python3 unzip
```

Install any missing dependencies (Debian/Ubuntu):
``` shell
sudo apt-get -qq -y update && sudo apt-get -qq -y upgrade
sudo apt-get -qq -y install curl python3 unzip
```

Then run:
``` shell
mkdir /tmp/lfmsync
cd /tmp/fmsync
wget https://github.com/Wolveix/LFMSync/archive/master.zip 2>/dev/null
unzip master.zip
cd LFMSync-master
mv config/export.py "$HOME/.config/lfmsync/export.py"
mv config/scrobble.py "$HOME/.config/lfmsync/scrobble.py"
mv config/sync.py "$HOME/.config/lfmsync/sync.py"
chmod u+x lfmsync
mv lfmsync /usr/bin/lfmsync
cd "$HOME"
rm -r /tmp/lfmsync
```

### Usage
Export your LastFM scrobbles:
``` shell
lfmsync export -u YourUsername -o OutputFile
```

Sync your exported LastFM scrobbles to LibreFM:
``` shell
lfmsync sync -u YourUsername -o OutputFile
```

## Credits
- Forked: [lastscrape-gui](https://github.com/encukou/lastscrape-gui)
- Maintained: [Robert Thomas](https://github.com/Wolveix)
- License: [GNU General Public License v3.0](https://github.com/Wolveix/Plexus/blob/master/LICENSE)
