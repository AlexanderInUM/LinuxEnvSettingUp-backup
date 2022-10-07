pip3 install --upgrade pip
pip install --upgrade pip
pip install --user pygame numpy
pip3 install --user pygame numpy
pip install carla
pip3 install carla

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1AF1527DE64CB8D9
sudo add-apt-repository "deb [arch=amd64] http://dist.carla.org/carla $(lsb_release -sc) main"
sudo apt-get update # Update the Debian package index
sudo apt-get install -y carla-simulator # Install the latest CARLA version, or update the current installation
cd /opt/carla-simulator # Open the folder where CARLA is installed
apt-cache madison carla-simulator # List the available versions of Carla
sudo apt-get install -y carla-simulator=0.9.10-1 # In this case, "0.9.10" refers to a CARLA version, and "1" to the Debian revision


# Referenced From: https://carla.readthedocs.io/en/latest/start_quickstart/