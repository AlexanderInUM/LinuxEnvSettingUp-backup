sudo apt install -y openssh-server

service sshd restart


# Extra Help If Sitll Unconnectable
sudo vim /etc/ssh/sshd_config # delete the '#' before the line begin with 'HotKey'
whereis sshd
#eg: /usr/sbin/sshd
sudo /usr/sbin/sshd

