#!/usr/bin/env bash

#install git
apt-get update
apt-get install -y git

#install mysql
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt-get install -y vim curl python-software-properties
apt-get update
apt-get -y install mysql-server
sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES; SET GLOBAL max_connect_errors=10000;"
/etc/init.d/mysql restart

#install flyway
wget -q http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/5.1.3/flyway-commandline-5.1.3-linux-x64.tar.gz
#extract flyway
tar -xzf flyway-commandline-5.1.3-linux-x64.tar.gz
rm flyway-commandline-5.1.3-linux-x64.tar.gz
chown -R vagrant:vagrant flyway-5.1.3
#add flyway to PATH
echo 'export PATH=$PATH:/home/vagrant/flyway-5.1.3/' >> /home/vagrant/.bashrc