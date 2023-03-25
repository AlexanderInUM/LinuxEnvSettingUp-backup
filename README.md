# Linux Environment Setting Up

Every time I face some problems on my virtual machine crashing I have to redo lots of work to prepare my Linux environment on newly installed system, which could actually be done by a machine. I wrote down these pipelined steps so as to accelerate my work while preparing my LInux environment.

<br>

This is the repository that speeds my initialization and installation process of a new Linux environment.


<br>

Usually, the executing order is:
1. env.sh
2. sshd.sh
3. conda.sh
4. case.sh
5. carla.sh
6. ros.sh
7. ros-bridge.sh
8. emptyDust.sh
9. git.sh
10. VS Code Settings

<br>
<br>



# Prepared Environmt

This repo has been successfully tested based on Ubuntu 20.04 Focal installed on VMWare Work Station 16 Pro.

<br>

Here are some background environments:
1. VM Ware Work Station 16 Pro
2. Ubuntu 20.04 Focal from official website
3. With enough space for Ubuntu virtual machine (or a real one if you don't want to install VM)

# Note

#### 1. CARLA On VM

While running CARLA built file `CarlaUE4.sh`, VMWare virtual machine does not support GPU directly, so the running of this application will be unsuccessful. [Ref](https://blog.csdn.net/passenger12234/article/details/120045638)

<br>

One suggestion to solve this problem is that you can run `CarlaUE4` on your Windows or non-virtual-machine environment which can be served as a server side of CARLA, as you are now in VMWare Work Station's environment that meets the problem I pointed above. Then `Change the default IP address form 127.0.0.1 to the ones on the environment you are running CarlaUE4` to successfully run the scripts in `PythonAPI` on your virtual Linux Ubuntu environment with ROS to continue your work.






<br>
<br>
<br>
<br>
<br>

<p align="right">by Alexander</p>
<p align="right">7th Oct, 2022</p>
