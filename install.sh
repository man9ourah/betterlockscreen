set -x 

./betterlockscreen -u ./lockscreen.jpg

# install systemd service
sudo ln -s $PWD/system/betterlockscreen@.service /etc/systemd/system/betterlockscreen@.service

# install the shell script for editing lock screen
sudo ln -s $PWD/betterlockscreen /usr/local/bin/betterlockscreen

# install fake xflock to integrate with xfce power manager
sudo ln -s $PWD/xflock4 /usr/local/bin/xflock4
