# LFMSync
A CLI tool for getting scrobbles from Last.FM and syncing them elsewhere.

## Install
Install any missing dependencies (Debian/Ubuntu):
``` shell
sudo apt-get -qq -y update && sudo apt-get -qq -y upgrade
sudo apt-get -qq -y install python3 unzip
```

Automatic install:
``` shell
curl https://raw.githubusercontent.com/Wolveix/LFMSync/master/install.sh | sudo bash
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
