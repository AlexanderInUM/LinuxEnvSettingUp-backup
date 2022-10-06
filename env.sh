### Set up basic development environments on Linux ###

sudo apt update
sudo apt upgrade
sudo apt install -y vim
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y aptitude
sudo apt install -y subversion
sudo apt install -y golang
sudo apt install -y python
sudo apt install -y pip
sudo apt install -y lua5.3
sudo apt install -y docker.io
sudo apt install -y geany
sudo apt install -y meld
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y baobab
sudo apt install -y ffmpeg
sudo apt install -y mlocate
#Start: LAMP Installation
sudo apt install -y php
sudo apt install -y cmatrix
sudo apt install -y apache2  
#sudo systemctl status apache2 #Confirm that Apache is now running
#echo '<?php phpinfo(); ?>' | sudo tee -a /var/www/html/phpinfo.php > /dev/null #Create a phpinfo.php test page
#sudo rm /var/www/html/phpinfo.php #Once you’ve confirmed that PHP is working correctly, delete the test file.
# visit http://127.0.0.1/ to see the effect, the file is under `/var/html` folder
sudo apt install -y redis
#redis-cli --version
#sudo systemctl status redis
#sudo systemctl start redis-server
#sudo systemctl stop redis
sudo apt install mariadb-server -y mariadb-client
#sudo systemctl status mariadb #Once installed, check it’s running correctly.
#sudo mysql_secure_installation #Secure your newly installed MariaDB service.
#End
sudo apt install -y rpm
sudo apt install -y zip
sudo aptitude install -y clang
sudo aptitude install -y g++
sudo aptitude install -y build-essential
sudo aptitude install -y cmake
sudo apt-get install -y manpages-dev
sudo aptitude install -y libopencv-dev python3-opencv
python3 -c "import cv2; print(cv2.__version__)"

# NPM Global Packages
sudo npm install -g servez
sudo npm install -g cryptee
sudo npm install -g splitee
sudo npm install -g wikit  #search wikipidea by wikit TARGET

# Other binaries
# https://www.anaconda.com/products/distribution #conda




