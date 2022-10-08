# Preparation
pip3 install --upgrade pip
pip install --upgrade pip
pip install --user pygame numpy
pip3 install --user pygame numpy
pip install --user transforms3d
pip3 install --user transforms3d
pip install opencv-contrib-python
pip3 install opencv-contrib-python

# CARLA Installation (Method A)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1AF1527DE64CB8D9
sudo add-apt-repository "deb [arch=amd64] http://dist.carla.org/carla $(lsb_release -sc) main"
sudo apt-get update # Update the Debian package index
sudo apt-get install -y carla-simulator # Install the latest CARLA version, or update the current installation
cd /opt/carla-simulator # Open the folder where CARLA is installed
apt-cache madison carla-simulator # List the available versions of Carla

# Extracting the package
#cd PATH_TO_CARLAR_SIMULATOR_DIR #as is done 2 steps above
./ImportAssets.sh

# Installing Client Library
#cd /carlar-simulator/PythonAPI
pip install carla
pip3 install carla
python3 -m pip install -r requirements.txt # Support for Python2 is provided in the CARLA release packages
#python3 generate_traffic.py  #change the default IP from 127.0.0.1 to the ones that really running CarlaUE4.sh/exe
#cd PythonAPI\examples #in another terminal
#python3 manual_control.py 


# Running CARLA
sudo apt-get install -y libomp5
cd /opt/carla-simulator/
./CarlaUE4.sh #only runnable with non-virtual-machine environment



# Referenced From: https://carla.readthedocs.io/en/latest/start_quickstart/