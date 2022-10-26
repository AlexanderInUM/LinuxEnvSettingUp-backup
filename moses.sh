mkdir smt
cd smt
## Install required packages
sudo apt-get install build-essential git-core pkg-config automake libtool wget zlib1g-dev python-dev libbz2-dev
## Install required packages for regression step 
sudo apt-get install libsoap-lite-perl
## Clone Moses from Github
git clone https://github.com/moses-smt/mosesdecoder.git
## Download & Install GIZA++
git clone https://github.com/moses-smt/giza-pp.git
## Copying GIZA++ Binaries to MosesDecoder
cd giza-pp
make
cd ../mosesdecoder
mkdir tools
cp ../giza-pp/GIZA++-v2/GIZA++ ../giza-pp/GIZA++-v2/snt2cooc.out ../giza-pp/mkcls-v2/mkcls tools
cd ..
## Install IRSTLM 5.80.08 (Download & Extract IRSTLM from https://jaist.dl.sourceforge.net/project/irstlm/irstlm/irstlm-5.80/irstlm-5.80.08.tgz, to your home directory)
mkdir irstlm
cd irstlm-5.80.08
cd trunk
./regenerate-makefiles.sh
./configure --prefix=$HOME/irstlm #[$HOME = the path where you want to install irstlm]
make install ## This step may show errors of not find stdlib, downgrade(ways have shown below) gcc and g++ to 4.9 and make install again.
cd ..
cd ..
######################################################################
## Installing lower version of gcc & g++
sudo vim /etc/apt/sources.list
## append this to sources.list:
# for downgrading gcc&g++
#deb http://dk.archive.ubuntu.com/ubuntu/ bionic main universe
#deb http://dk.archive.ubuntu.com/ubuntu/ xenial main
#deb http://dk.archive.ubuntu.com/ubuntu/ xenial universe
## then
sudo apt update
sudo apt-get install gcc-4.9
sudo apt-get install g++-4.9
sudo apt-get install gcc-4.8
sudo apt-get install g++-4.8
######################################################################
## Downgrade gcc g++
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 1
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 2
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 3
sudo update-alternatives --config gcc
## After running the command above, console should be:
##There are 3 choices for the alternative gcc (providing /usr/bin/gcc).
##
##  Selection    Path              Priority   Status
##------------------------------------------------------------
##* 0            /usr/bin/gcc-9     3         auto mode
##  1            /usr/bin/gcc-4.8   1         manual mode
##  2            /usr/bin/gcc-4.9   2         manual mode
##  3            /usr/bin/gcc-9     3         manual mode
##
##Press <enter> to keep the current choice[*], or type selection number: 
gcc -v
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 1
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 2
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 3
sudo update-alternatives --config g++
g++ -v
######################################################################



## Based on gcc4.9,g++4.9,Python2.7(use conda to change python version)
## Download boost1.64 from online, decompress it and place it into smt
cd boost_1_64_0/
./bootstrap.sh
sudo ./b2  --layout=system link=static install || echo FAILURE
cd ..
## Install CMPH2.0
wget http://www.achrafothman.net/aslsmt/tools/cmph_2.0.orig.tar.gz
tar zxvf cmph_2.0.orig.tar.gz
cd cmph-2.0/
./configure
sudo make
sudo make install
## Install XML-RPC
wget http://www.achrafothman.net/aslsmt/tools/xmlrpc-c_1.33.14.orig.tar.gz
tar zxvf xmlrpc-c_1.33.14.orig.tar.gz
cd xmlrpc-c-1.33.14/
./configure
sudo make
sudo make install
cd ..


#####################Failed!!!####################################
## Install Moses
cd mosesdecoder
make -f contrib/Makefiles/install-dependencies.gmake
./bjam --with-boost=../boost_1_64_0 --with-cmph=../cmph-2.0 --with-irstlm=../irstlm  







## Reference: 
## https://achrafothman.net/site/how-to-install-moses-statistical-machine-translation-in-ubuntu/
## https://stackoverflow.com/questions/68805002/i-need-to-install-gcc4-9-on-ubuntu-20-04-matlab-mex
## https://achrafothman.net/site/how-to-downgrade-gcc-and-g-in-ubuntu/


cat corpus/train | cut -f 2 | ../mosesdecoder/scripts/tokenizer/tokenizer.perl -l en > corpus/train.tok.en