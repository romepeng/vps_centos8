#!/bin/bash
yum -y install @mysql

# systemctl start mysqld
# systemctl enable --now mysqld
# systemctl status mysqld
#  mysql_secure_installation
# mysql -u root -p
mysql> create database demo;
mysql> GRANT ALL ON demo.* TO jqdata@localhost IDENTIFIED BY 'jqdata123';
mysql> exit

#### 允许远程访问（授权给所有ip）
mysql>CREATE USER 'root'@'%' IDENTIFIED BY 'password';
mysql> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'WITH GRANT OPTION;
mysql>FLUSH PRIVILEGES;

#设置防火墙
$ firewall-cmd --zone=public --add-port=3306/tcp --permanent
$ firewall-cmd --reload
service msyqld restart
