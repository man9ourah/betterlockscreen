set -x 

./betterlockscreen -u ./lockscreen.jpg

# install systemd service
sudo ln -s $PWD/system/betterlockscreen@.service /etc/systemd/system/betterlockscreen@.service

# install the shell script for editing lock screen
sudo update-alternatives --install /usr/local/bin/betterlockscreen betterlockscreen $PWD/betterlockscreen 100 

# install fake xflock to integrate with xfce power manager
sudo update-alternatives --install /usr/local/bin/xflock4 xflock4 $PWD/xflock4 100                                                                                                                                                                                                        
