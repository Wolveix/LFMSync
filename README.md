# LFMSync
A CLI tool for getting scrobbles from Last.FM and syncing them elsewhere.

## Install
Install any missing dependencies (Debian/Ubuntu):
``` shell
sudo apt-get -qq -y update && sudo apt-get -qq -y upgrade
sudo apt-get -qq -y install python3 unzip
wget https://github.com/Wolveix/LFMSync/archive/master.zip && unzip master.zip && cd LFMSync-master
```

### Usage
Export your LastFM scrobbles:
``` shell
python3 lastexport.py -u Your_Username_Here -o Name_Of_Output_File.txt
```

Sync your exported LastFM scrobbles to LibreFM:
``` shell
python3 libreimport.py Your_Username_Here Name_Of_Output_File.txt
```
