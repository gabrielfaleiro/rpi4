
# REF: https://www.youtube.com/watch?v=KNWXmJBNWCo

# sudo raspi-config
	# 5 - Interfacing options
	# P4 - SPI -> enable

sudo rm -rf LCD-show
sudo git clone https://github.com/goodtft/LCD-show.git
sudo chmod -R 755 LCD-show
cd LCD-show
# Install driver
sudo ./MHS35-show

# To go back to the hdmi ports
sudo ./LCD-hdmi
