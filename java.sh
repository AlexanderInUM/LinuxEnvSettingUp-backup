sudo apt update
sudo apt install -y default-jre
sudo apt install -y default-jdk
readlink -f /usr/bin/java #discover where Java is installed
# STORE THE RESULT OF THE OUTPUT ABOVE
#sudo vim /etc/environment
#JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java" #Add this line at the end of the file
#source /etc/environment #update
#echo $JAVA_HOME #check 